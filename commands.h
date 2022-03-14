//324680438
//313306367
// Nitzan Fisher & David Monheit

#ifndef COMMANDS_H_
#define COMMANDS_H_

#include<iostream>
#include <string.h>
#include <fstream>
#include <sstream>
#include <vector>
#include "HybridAnomalyDetector.h"
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

using namespace std;


class DefaultIO {
public:
    virtual string read() = 0;

    virtual void write(string text) = 0;

    virtual void write(float num) = 0;

    virtual void read(float *num) = 0;

    virtual ~DefaultIO() {}

    void readAndFile(string name) {
        ofstream out(name);
        string s = "";
        s = read();
        while ((s != "done\n") && (s != "done") && (strcmp(s.c_str(), "done") != 0) &&
               (strcmp(s.c_str(), "done\n") != 0)) {
            out << s << endl;
            s = read();
        }
        out.close();
    }
    // you may add additional methods here
};

// you may add here helper classes

class StandardIO : public DefaultIO {
    ifstream input;
    ofstream output;

public:
    StandardIO(string inputFile, string outputFile) {
        input.open(inputFile);
        output.open(outputFile);
    }

    virtual void write(string str) {
        cout << str << endl;
        output << str;
    }

    virtual void write(float num) = 0;

    virtual string read() {
        string str;
        input >> str;
        return str;
    }

    virtual void read(float *num) {
        input >> *num;
    }

    void close() {
        if (input.is_open())
            input.close();
        if (output.is_open())
            output.close();
    }

    ~StandardIO() {
        close();
    }
};

class cliSet {
public:
    cliSet() {
        this->csvTest = nullptr;
        this->csvTrain = nullptr;
        HybridAnomalyDetector *hybDetector = new HybridAnomalyDetector();
        this->detector = hybDetector;
    }

    TimeSeries *csvTrain;
    TimeSeries *csvTest;
    HybridAnomalyDetector *detector;

    void setCsvTrain(const char *name) {
        TimeSeries *ts = new TimeSeries(name);
        csvTrain = ts;
    }

    void setCsvTest(const char *name) {
        TimeSeries *ts = new TimeSeries(name);
        csvTest = ts;
    }

    void setDetector(float threashold) {
        this->detector->setThreashold(threashold);
    }

    ~cliSet() {
        delete csvTest;
        delete csvTrain;
        delete detector;
    }
};


struct specialReport {
    int start;
    int end;
    string desc;
    bool trueP;
};

struct State {
    float th;
    vector<AnomalyReport> reps;
    vector<specialReport> specialReps;
    int fileSize;

    State() {
        th = 0.9;
        fileSize = 0;
    }
};

// you may edit this class
class Command {
protected:
    DefaultIO *dio;
public:
    const string desc;

    Command(DefaultIO *dio, const string desc) : dio(dio), desc(desc) {}

    Command() {}

    virtual void execute(State *state) = 0;

    virtual ~Command() {}
};

// implement here your command classes

class UploadCmd : public Command {
public:
    UploadCmd(DefaultIO *dio) : Command(dio, "upload a time series csv file") {
    }

//    string read(){
//        string str1, str2;
//        while((str1 != "done\n") && (str1!="done") && (strcmp(str2.c_str(), "done") != 0) && (strcmp(str2.c_str(), "done\n") != 0)) {
//            str1 = defaultInputOutput->read();
//            str2 += str1 + "\n";
//        }
//        return str2;
//    }
    virtual void execute(State *state) {
        dio->write("Please upload your local train CSV file.\n");
        dio->readAndFile("anomalyTrain.csv");
        dio->write("UploadCmd complete.\n");
        dio->write("Please upload your local test CSV file.\n");
        dio->readAndFile("anomalyTest.csv");
        dio->write("UploadCmd complete.\n");
    }
};

class Settings : public Command {
public:
    Settings(DefaultIO *dio) : Command(dio, "algorithm settings") {
    }

    virtual void execute(State *state) {
        bool isAlright = false;
        while (!isAlright) {
            dio->write("The current correlation threshold is ");
            dio->write(state->th);
            dio->write("\nType a new threshold\n");
            float num;
            dio->read(&num);
            if (num > 0 && num <= 1) {
                state->th = num;
                isAlright = true;
            } else
                dio->write("please choose a value between 0 and 1.\n");
        }
    }
};

class Detect : public Command {
public:
    Detect(DefaultIO *dio) : Command(dio, "detect anomalies") {
    }

    virtual void execute(State *state) {
        TimeSeries train("anomalyTrain.csv");
        TimeSeries test("anomalyTest.csv");
        state->fileSize = test.getWidth();
        HybridAnomalyDetector ad;
        ad.setThreashold(state->th);
        ad.learnNormal(train);
        state->reps = ad.detect(test);

        specialReport rep;
        rep.start = 0;
        rep.end = 0;
        rep.desc = "";
        rep.trueP = false;
        for_each(state->reps.begin(), state->reps.end(), [&rep, state](AnomalyReport &repo) {
            if (repo.timeStep == rep.end + 1 && repo.description == rep.desc)
                rep.end++;
            else {
                state->specialReps.push_back(rep);
                rep.start = repo.timeStep;
                rep.end = rep.start;
                rep.desc = repo.description;
            }
        });
        state->specialReps.push_back(rep);
        state->specialReps.erase(state->specialReps.begin());

        dio->write("anomaly detection complete.\n");
    }
};

class Display : public Command {
public:
    Display(DefaultIO *dio) : Command(dio, "display results") {
    }

    virtual void execute(State *state) {
        for (AnomalyReport rep: state->reps) {
            dio->write(to_string(rep.timeStep) + "\t" + rep.description + "\n");
        }
        dio->write("Done.\n");
    }
};

class Analyze : public Command {
public:
    Analyze(DefaultIO *dio) : Command(dio, "upload anomalies and analyze results") {
    }

    bool isTruePositive(int startTime, int endTime, State *sharedState) {
        for (size_t i = 0; i < sharedState->specialReps.size(); i++) {
            specialReport rep = sharedState->specialReps[i];
            if (endTime >= rep.start && rep.end >= startTime) {
                sharedState->specialReps[i].trueP = true;
                return true;
            }
        }
        return false;
    }

    virtual void execute(State *state) {
        for (int i = 0; i < state->specialReps.size(); i++) {
            state->specialReps[i].trueP = false;
        }

        dio->write("Please upload your local anomalies file.\n");
        string str = "";
        float trueP = 0;
        float total = 0;
        float positiveCount = 0;
        str = dio->read();
        while ((str != "done\n") && (str != "done") && (strcmp(str.c_str(), "done") != 0) &&
               (strcmp(str.c_str(), "done\n") != 0)) {
            int counter = 0;
            for (int d = 0; str[counter] != ','; counter++);
            string starter = str.substr(0, counter);
            string ender = str.substr(counter + 1, str.length());
            int startIndex = stoi(starter);
            int endIndex = stoi(ender);
            if (isTruePositive(startIndex, endIndex, state))
                trueP++;
            total += endIndex + 1 - startIndex;
            positiveCount++;
            str = dio->read();
        }
        dio->write("Upload complete.\n");
        float FalsePos = 0;
        for (size_t i = 0; i < state->specialReps.size(); i++)
            if (!state->specialReps[i].trueP)
                FalsePos++;

        float Number = state->fileSize - total;
        float truePosR = ((int) (1000.0 * trueP / positiveCount)) / 1000.0f;
        float falsePosR = ((int) (1000.0 * FalsePos / Number)) / 1000.0f;
        dio->write("True Positive Rate: ");
        dio->write(truePosR);
        dio->write("\nFalse Positive Rate: ");
        dio->write(falsePosR);
        dio->write("\n");
    }
};

class ExitCmd : public Command {
public:
    ExitCmd(DefaultIO *dio) : Command(dio, "exit") {
    }

    virtual void execute(State *state) {
        return;
    }
};

#endif /* COMMANDS_H_ */
