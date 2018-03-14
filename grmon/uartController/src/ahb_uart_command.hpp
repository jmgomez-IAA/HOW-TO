/*
 * ahb_uart_command.h
 *
 *  Created on: Nov 3, 2016
 *      Author: jmgomez
 *      @brief Container for a AHB UART command.
 *
 */

#ifndef AHB_UART_COMMAND_HPP_
#define AHB_UART_COMMAND_HPP_

#include <vector>
#include <string>

using namespace std;

class UartCommand {
private :
	unsigned char Length;
	unsigned int Addr;
	bool Write;

	vector<unsigned int> data;
	vector<unsigned char> cmd;

public :

	UartCommand();
	UartCommand(UartCommand& uc);
	//Template<typename T>
	//void UartCommand::UartCommand(const T& data) {iterator<auto> ptr};
	UartCommand(string Dir, unsigned int Addr, const vector<int> &Data, unsigned int Length);

	~UartCommand();

	unsigned int getLength() {return this->Length;}
	unsigned int setAddress(unsigned int Addr) {return (this->Addr = Addr);};
	unsigned int setDirection(string Dir){ return (this->Write = Dir.compare("Tx"));};

	unsigned int build();
	bool transmit();

	void print();
	
	
};



#endif /* AHB_UART_COMMAND_HPP_ */
