

#ifndef CLI_H_
#define CLI_H_

#include <string.h>
#include "commands.h"
#include <array>
#include "minCircle.h"

using namespace std;

class CLI {
public:
	DefaultIO* dio;
    Command **commands = new Command*[6];
    cliSet* cli;
	CLI(DefaultIO* dio);
	void start();
	virtual ~CLI();
};

#endif /* CLI_H_ */
