#include "stdafx.h"
#include "Phaser.h"


Phaser::Phaser()
	:package()
{

}


Phaser::~Phaser(){

}

bool Phaser::set_type(char * type){
	try {
		std::string raw_type(type);
		std::string beg("<type>"), end("</type>");
		std::string fine_type = beg + raw_type + end;
		this->type = fine_type;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_intent(char * intent){
	try {
		std::string raw_intent(intent);
		std::string beg("<intent>"), end("</intent>");
		std::string fine_intent = beg + raw_intent + end;
		this->intent = fine_intent;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

bool Phaser::set_content(char * content){
	try {
		std::string raw_content(content);
		std::string beg("<content>"), end("</content>");
		std::string fine_content = beg + raw_content + end;
		this->content = fine_content;
		return true;
	}
	catch (void* e) {
		return false;
	}
}

Package Phaser::finalize(){
	Package pkg;
	try {
		std::string raw_package = intent + content;//�ϲ�ͷ�����ݣ���ʼ����md5
		//�ϵ㣺׼��Ū����MD5��Ȼ��дkeepalive
		int i;
		unsigned char encrypt[] = "admin";//21232f297a57a5a743894a0e4a801fc3
		unsigned char decrypt[16];
		MD5_CTX md5;
		MD5Init(&md5);
		MD5Update(&md5, encrypt, strlen((char *)encrypt));
		MD5Final(&md5, decrypt);
		printf("����ǰ:%s\n���ܺ�:", encrypt);
		for (i = 0; i<16; i++)
		{
			printf("%02x", decrypt[i]);
		}

		std::string beg("<package>"), end("</package>");
		std::string fine_package = beg + raw_package + end;
	}
	catch (void* e) {
		return pkg;
	}
	return this->package;
}
