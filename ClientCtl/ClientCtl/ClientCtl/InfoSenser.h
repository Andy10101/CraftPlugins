#pragma once
#pragma warning(disable: 4996)
#ifndef _AFXDLL
#define _AFXDLL
#endif
//#include <AFX.h>
#include <string>
#include <vector>
//#include "Service.h"
//#include <winsock.h>
#include <afxwin.h>
#include "GetSysInfo.h"


class InfoSenser
{
public:
	InfoSenser();
	~InfoSenser();

	bool printNetInfo();
	bool printHWInfo();
	bool printDriveInfo();
	bool printCPUInfo();
	bool printInterfaceInfo();
	//bool printfGraphicCardInfo();
	//bool printTotalVirtualMemInfo();
	bool printAll();

	GetSysInfo* gSI;
	
	SYSTEM_INFO sysInfo;//Ӳ����Ϣ
	CString chProcessorName, chProcessorType;//CPU��Ϣ
	DWORD dwProcessorNum, dwMaxClockSpeed;
	DWORD dwdriveNum;//Ӳ����Ϣ
	CString *chDriveInfo;
	int  interfaceCount;//������Ϣ
	//CString *InterfaceName;
	std::vector<CString> InterfaceNames;
	DWORD dwgraphicCardNum;//�Կ���Ϣ
	CString *chgraphicCardNames;

	OSVERSIONINFOEX osvi;//ϵͳ��Ϣ
	//CString strOSVersion, strServiceVersion;//����ϵͳ�ܹ�
	bool isWow64;

	MEMORYSTATUSEX statex; //�����ڴ���Ϣ(ʵʱ����)
	//CString dwTotalVirtual;//�����ڴ�
	//CString dwTotalPhy_d;
	bool sysSuccess;

	char hostName[256];
	bool netSuccess;

protected:
	struct hostent *host; //������Ϣ��h_addr_list��Ҫת���ɱ�������
	WSADATA WSAData; //��ʼ���׽�����ʱʹ��
};

