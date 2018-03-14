//============================================================================
// Name        : uartController.cpp
// Author      : Juan Manuel Gomez jmgomez@iaa.es
// Version     : 0
// Copyright   : Your copyright notice
// Description : Simple test of the communication to the AHBUART
//				 debugging interface.
//
//============================================================================


//Tenemos que crear la clase CSerial que este basada en hebras y que envie y reciba paquete.
#include <iostream>
#include <uart_controller/src/ttyStream.h>

using namespace std;

#include "ahb_uart_command.hpp"

int main() {
	vector<int> dat (10, 111);
	UartCommand grmon("Tx",0x40001000, dat, 12);

	ttyStream tty_test;

	cout << "!!!Hello World!!!" << endl; // prints !!!Hello World!!!
	char deviceName[64] = "/dev/pst/1";

	tty_test.openStream(deviceName);
	tty_test.def_configuration();

	tty_test.configure();

	char buffer[64] = "Hola q tal";
	tty_test.writeStream(buffer, 10);

	tty_test.closeStream();

	grmon.build();
	cout << "!!!Hello World!!!" << endl; // prints !!!Hello World!!!
	grmon.print();

	return 0;
}
