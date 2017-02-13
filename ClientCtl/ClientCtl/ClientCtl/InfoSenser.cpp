#include "stdafx.h"
#include "InfoSenser.h"
#include "Service.h"
#include "InfoSenser.h"
#include <string>
#include <iostream>
#include <Windows.h>

#pragma comment(lib,"ws2_32.lib") 

InfoSenser::InfoSenser() {
	this->InterfaceNames.clear();
	//��ȡϵͳ��Ϣ
	GetSystemInfo(&sysInfo);
	osvi.dwOSVersionInfoSize = sizeof(osvi);
	this->sysSuccess = true;
	if (!GetVersionEx((LPOSVERSIONINFOW)&osvi)) {
		sysSuccess = false; 
		std::cout << "Error init os info" << std::endl;
		throw "Error init os info";
	}
	//��ȡ�ڴ���Ϣ
	statex.dwLength = sizeof(statex);
	if ((!sysSuccess) | (!GlobalMemoryStatusEx(&statex))){
		sysSuccess = false;
		std::cout << "Error init memory info" << std::endl;
		throw "Error init memory info";
	}

	//��ȡ������Ϣ
	this->netSuccess = true;
	if (WSAStartup(MAKEWORD(2, 0), &WSAData)){// ��ʼ��Windows sockets API
		std::cout<<"WSAStartup failed "<<WSAGetLastError()<<std::endl;
		netSuccess = false;
		throw "WSAStartup failed";
	}

	if ((!netSuccess) | gethostname(hostName, sizeof(hostName))){		//��ȡ������
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
}

InfoSenser::~InfoSenser(){
	WSACleanup();
}

void InfoSenser::printNetInfo(){
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
	}
	else 	std::cout << "��ȡ������Ϣʧ��";
}

void InfoSenser::printHWInfo(){
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
	}
	else 	std::cout << "��ȡӲ����Ϣʧ��";

}
