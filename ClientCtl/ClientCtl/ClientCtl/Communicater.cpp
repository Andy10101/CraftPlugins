#include "stdafx.h"
#include "InfoSenser.h"
#include "Service.h"
#include "InfoSenser.h"
#include <string>
#include <iostream>
#include <Windows.h>
#include "Communicater.h"

#pragma comment(lib,"ws2_32.lib") 

//Ĭ������127.0.0.1:1082
Communicater::Communicater(){
	new (this)Communicater("127.0.0.1", (u_short)1082);
}

Communicater::Communicater(const char * ip, const u_short port){
	this->socketSuccess = true;

	if (!socketSuccess | WSAStartup(MAKEWORD(2, 0), &WSAData)) {
		std::cout << "WSAStartup failed " << WSAGetLastError() << std::endl;
		this->socketSuccess = false;
	}
	this->s = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
	this->sockaddr.sin_family = PF_INET;
	this->sockaddr.sin_addr.S_un.S_addr = inet_addr(ip);
	this->sockaddr.sin_port = htons(port);

	int iResult = bind(s, (SOCKADDR*)&sockaddr, sizeof(SOCKADDR));
	if (iResult == SOCKET_ERROR) {
		//�ر����ֽ�
		closesocket(s);
		s = INVALID_SOCKET;
		//�ͷ�ws2_32.dll��̬���ӿ�
		WSACleanup();
		throw "��IP��ַ�Ͷ˿�ʧ��!";
	}

	iResult = listen(s, 1);
	if (iResult == SOCKET_ERROR) {
		//�ر����ֽ�
		closesocket(s);
		s = INVALID_SOCKET;
		//�ͷ�ws2_32.dll��̬���ӿ�
		WSACleanup();
		throw "����ʧ��!";
	}

}


Communicater::~Communicater()
{
}
