
#include "SimpleAnomalyDetector.h"
#include "minCircle.h"
SimpleAnomalyDetector::SimpleAnomalyDetector() {
    // TODO Auto-generated constructor stub bl

}

SimpleAnomalyDetector::~SimpleAnomalyDetector() {
    // TODO Auto-generated destructor stub
}

vector<Point> getPoints(float *a, float *b, int size){
    vector<Point> listOfPoints;
    listOfPoints.reserve(size);
for (int i =0; i < size; i++){
        listOfPoints.emplace_back(a[i], b[i]);
    }
    return listOfPoints;
}

void SimpleAnomalyDetector::learnNormal(const TimeSeries& ts){
    float minCorrelation = 0.5;
    float * aNonConst;
    float * bNonConst;
    float *finalConsA;
    float *finalConsB;
    int size;
    string feature1,feature2;
    vector<Point> listOfPoints;
    Point **points;
    for(int i = 0; i < ts.result.size(); i++){
        feature1 = ts.result[i].first;
        float m = 0;
        int c = -1;
        for(int j = i + 1; j < ts.result.size(); j++){
            float const *a = ts.result[i].second.data();
            aNonConst = const_cast<float *>(a);
            float const *b = ts.result[j].second.data();
            bNonConst = const_cast<float *>(b);
            size = min(ts.result[i].second.size(), ts.result[j].second.size());
            //get absolute value from pearson
            float p = abs(pearson(aNonConst, bNonConst, size));
            if(p > m){
                finalConsA = aNonConst;
                finalConsB = bNonConst;
                //set local feature2 to correct name
                feature2 = ts.result[j].first;
                m = p;
                c = j;
            }
        }
        // if c != -1, correlation has been found, associate
        if (c != -1 && m >= minCorrelation){

            correlatedFeatures cor = correlatedFeatures();
            listOfPoints = getPoints(finalConsA, finalConsB, size);
            //create new correlation and update fields
            //cor = new correlatedFeatures;
            cor.feature1 = feature1;
            cor.feature2 = feature2;
            Point *p = listOfPoints.data();
            points = &p;
            cor.lin_reg = linear_reg(points, size);
            cor.corrlation = m;
            float maxDev = 0;
            for(int l = 0; l < size; l++){
                float temDev = dev(listOfPoints[l], cor.lin_reg);
                if (temDev > maxDev){
                    maxDev = temDev;

                }
            }
            cor.threshold = (float) 1.1 * maxDev ;
            if(m < 0.9) {
                cor.threshold = 1.1 * findMinCircle(points, size).radius;
                cor.minCircle = findMinCircle(points, size);
            }
            cf.push_back(cor);
        }
    }
}

int SimpleAnomalyDetector::getLinesNum(const TimeSeries& ts){
    int m = 0;
    int temp = 0;
    for(int i = 0; i < ts.result.size(); i++){
        for(int j = 0; j < ts.result.at(i).second.size(); j++){
            temp++;
        }
            if(temp > m){
                m = temp;
            }
            temp = 0;
    }
    return m;

}

vector<AnomalyReport> SimpleAnomalyDetector::detect(const TimeSeries& ts){
    vector<AnomalyReport> reportVec;
    for(int i = 0; i < ts.result[0].second.size(); ++i){\
    makeReport(ts.mp, cf, reportVec, (long)i);
    }
    return reportVec;
}

// create detect's report by line regresion algorithm
void SimpleAnomalyDetector::makeReport( map<string,vector<float>> map, vector<correlatedFeatures> cf, vector<AnomalyReport> &vec, long timeStep)
{
    string feature1, feature2;

    for (correlatedFeatures c:cf){
        feature1 = c.feature1;
        feature2 = c.feature2;
        Point p = Point(map.at(feature1).at(timeStep),map.at(feature2).at(timeStep));
        if(dev(p, c.lin_reg) > c.threshold){
            const string description = feature1 + "-" + feature2;
            AnomalyReport ar(description, timeStep + 1);
            vec.push_back(ar);
        }
    }
}
