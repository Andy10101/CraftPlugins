#pragma once
#pragma warning(disable: 4996)
#include "Service.h"
#include <string>
#include <Windows.h>

class InfoSenser
{
public:
	InfoSenser();
	~InfoSenser();

	void printNetInfo();
	void printHWInfo();
	
	SYSTEM_INFO sysInfo;//Ӳ����Ϣ
	OSVERSIONINFOEX osvi;//ϵͳ��Ϣ
	MEMORYSTATUSEX statex; //�ڴ���Ϣ(ʵʱ����)
	bool sysSuccess;

	char hostName[256];
	bool netSuccess;

protected:
	struct hostent *host; //������Ϣ��h_addr_list��Ҫת���ɱ�������
	WSADATA WSAData; //��ʼ���׽�����ʱʹ��
};

