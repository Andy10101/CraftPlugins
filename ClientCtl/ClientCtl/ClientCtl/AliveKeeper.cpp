#include "StdAfx.h"
#include "AliveKeeper.h"
#include <string>
#include<iostream>
#include <Windows.h>
#include <fstream>
#include <iostream>


AliveKeeper::AliveKeeper(std::string serviceName){
	this->serviceName=serviceName;
	this->isRunning=false;
}

AliveKeeper::~AliveKeeper(void){
	
}

bool AliveKeeper::registerService(void){
	std::cout<<"ע�����"<<std::endl;
	return true;
}

bool AliveKeeper::checkService(void){
	return true;
}