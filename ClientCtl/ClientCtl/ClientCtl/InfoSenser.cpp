#include "stdafx.h"
#include "InfoSenser.h"
#include "Service.h"
#include <string>
#include <iostream>
#include <afxwin.h>
#include <vector>

#pragma comment(lib,"ws2_32.lib") 

InfoSenser::InfoSenser(){
	this->InterfaceNames.clear();
	CString test[3000];
	this->chDriveInfo = test;
	//this->chDriveInfo = new CString[300];
	this->gSI = new GetSysInfo();

	//��ȡϵͳ��Ϣ
	GetSystemInfo(&sysInfo);
	osvi.dwOSVersionInfoSize = sizeof(osvi);
	this->sysSuccess = true;
	if (!GetVersionEx((LPOSVERSIONINFOW)&osvi)) {
		sysSuccess = false; 
		std::cout << "Error init os info" << std::endl;
		throw "Error init os info";
	}
	this->isWow64 = this->gSI->IsWow64();

	//��ȡCPU��Ϣ
	this->gSI->GetCpuInfo(this->chProcessorName, this->chProcessorType, this->dwProcessorNum, this->dwMaxClockSpeed);

	//��ȡӲ����Ϣ
	this->gSI->GetDiskInfo(this->dwdriveNum, this->chDriveInfo);

	//��ȡ�ڴ���Ϣ
	statex.dwLength = sizeof(statex);
	if ((!sysSuccess) | (!GlobalMemoryStatusEx(&statex))){
		sysSuccess = false;
		std::cout << "Error init memory info" << std::endl;
		throw "Error init memory info";
	}
	this->gSI->GetMemoryInfo(this->dwTotalPhy_d, this->dwTotalVirtual);

	//��ȡ������Ϣ
	this->netSuccess = true;
	if (WSAStartup(MAKEWORD(2, 0), &WSAData)){// ��ʼ��Windows sockets API
		std::cout<<"WSAStartup failed "<<WSAGetLastError()<<std::endl;
		netSuccess = false;
		throw "WSAStartup failed";
	}

	//��ȡ������
	if ((!netSuccess) | gethostname(hostName, sizeof(hostName))){
		std::cout<<"Error: "<<WSAGetLastError()<<std::endl;
		netSuccess = false;
		throw "Error: " + WSAGetLastError();
	}

	host = gethostbyname(hostName);
	if (!host) {
		netSuccess = false;
		std::cout << "Error: " << WSAGetLastError() << std::endl;
		throw "Error: " + WSAGetLastError();
	}

	//��ȡ������Ϣ
	this->interfaceCount = this->gSI->GetInterFaceCount();
	int count = this->interfaceCount;
	CString interfaceName;
	std::vector<CString>::iterator it = this->InterfaceNames.begin();
	while (count-- > 0) {
		this->gSI->GetInterFaceName(interfaceName, count);
		if (interfaceName)
			this->InterfaceNames.push_back(interfaceName);
		else
			std::cout << "Null name of Interface error!" << std::endl;
	}

	/*
	//��ȡ�Կ���Ϣ
	this->gSI->GetDisplayCardInfo(this->dwgraphicCardNum, this->chgraphicCardNames);
	*/
}

InfoSenser::~InfoSenser(){
	WSACleanup();
}

bool InfoSenser::printNetInfo(){
	GlobalMemoryStatusEx(&statex);
	if (netSuccess) {
		printf("��������             %s\n", hostName);
		std::cout << "������ַ����:        " << host->h_addrtype << std::endl
			<< "��ַ�嵥:        " << host->h_addr_list << std::endl
			<< "�����б�:        " << host->h_aliases << std::endl
			<< "��ַ����:        " << host->h_length << std::endl
			<< "��ʽ��������:        " << host->h_name << std::endl;
		for (int i = 0; host->h_addr_list[i] != 0; i++) {
			std::cout << "������IP" << i + 1 << ":        " << inet_ntoa(*(struct in_addr*)*host->h_addr_list) << std::endl;
		}
		return true;
	}
	else 	std::cout << "��ȡ������Ϣʧ��";
	return false;
}

bool InfoSenser::printHWInfo(){
	if (sysSuccess) {
		printf("����ϵͳ�汾 :      %u.%u.%u\n", osvi.dwMajorVersion, osvi.dwMinorVersion, osvi.dwBuildNumber);
		printf("Service Pack :      %u.%u\n", osvi.wServicePackMajor, osvi.wServicePackMinor);
		printf("�������ܹ� :        %u\n", sysInfo.wProcessorArchitecture);
		printf("���������� :        %u\n", sysInfo.wProcessorLevel);
		printf("�������汾 :        %u\n", sysInfo.wProcessorRevision);
		printf("���������� :        %u\n", sysInfo.dwActiveProcessorMask);
		printf("���������� :        %u\n", sysInfo.dwNumberOfProcessors);
		printf("���������� :        %u\n", sysInfo.dwProcessorType);
		printf("ҳ���С :          %u\n", sysInfo.dwPageSize);
		printf("Ӧ�ó�����С��ַ :  %u\n", sysInfo.lpMinimumApplicationAddress);
		printf("Ӧ�ó�������ַ :  %u\n", sysInfo.lpMaximumApplicationAddress);
		printf("�����ڴ�������� :  %u\n", sysInfo.dwAllocationGranularity);
		printf("OemId :             %u\n", sysInfo.dwOemId);
		printf("wReserved :         %u\n", sysInfo.wReserved);

		std::cout << "ʣ���ڴ�:             " << statex.dwMemoryLoad <<
			"% (" << (float)((float)statex.ullAvailPhys / (float)1024/ (float)1024) << "MB/"
			<< (float)((float)statex.ullTotalPhys / (float)1024 / (float)1024) << "MB)" << std::endl;
		return true;
	}
	else 	std::cout << "��ȡӲ����Ϣʧ��";
	return false;
}

bool InfoSenser::printDriveInfo(){
	if (true) {
		int count = this->dwdriveNum;
		while (count-- > 0) {
			std::cout << "����" << count<< ": "<< this->chDriveInfo[count - 1] <<std::endl;
		}
		std::cout << "������Ϣ���";
		_getch();
		return true;
	}
	else
		std::cout << "��ȡ������Ϣʧ��";
	return false;
}
