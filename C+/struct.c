#include <stdio.h>

struct GameInfo {
	char * name;
	int year;
	int price;
	char * company;

	struct GameInfo* friendGame; // ���� ��ü ����
};

typedef struct {
	char* name;
	int year;
	int price;
	char* company;

	struct GameInfo* friendGame; // ���� ��ü ����
} GAME_INFO;

int main_struct(void)
{
	// [���� ���]
	// �̸� : Dd
	// �߸ų⵵ : 2020��
	// ���� : 50��
	// ���ۻ� : D_d

	char * name = "Dd";
	int year = 2020;
	int price = 50;
	char * company = "D_d";

	// [�߰� ���� ���]
	// �̸� : Dd2
	// �߸ų⵵ : 2020��
	// ���� : 500��
	// ���ۻ� : D_d2

	char * name2 = "Dd2";
	int year2 = 2020;
	int price2 = 500;
	char * company2 = "D_d2";

	//����ü ���
	struct GameInfo gameInfo1;
	//struct GameInfo gameInfo2;
	gameInfo1.name = "Dd";
	gameInfo1.year = 2020;
	gameInfo1.price = 50;
	gameInfo1.company = "D_d";

	//����ü ���
	printf("\n--���� ��� ����--\n");
	printf("   ���Ӹ� : %s\n", gameInfo1.name);
	printf(" �߸ų⵵ : %d\n", gameInfo1.year);
	printf("     ���� : %d\n", gameInfo1.price);
	printf("   ���ۻ� : %s\n", gameInfo1.company);

	//����ü�� �迭ó�� �ʱ�ȭ(����ü ��� + ���)
	struct GameInfo gameInfo2 = {"Dd2", 2020, 500, "D_d2"};
	printf("\n--�߰� ���� ��� ����--\n");
	printf("   ���Ӹ� : %s\n", gameInfo2.name);
	printf(" �߸ų⵵ : %d\n", gameInfo2.year);
	printf("     ���� : %d\n", gameInfo2.price);
	printf("   ���ۻ� : %s\n", gameInfo2.company);

	//����ü �迭
	struct GameInfo gameArray[2] = {
		{"Dd", 2020, 50, "D_d"} ,
		{"Dd2", 2020, 500, "D_d2"}
	};

	//����ü ������
	struct GameInfo * gamePtr; //�̼Ǹ�
	gamePtr = &gameInfo1;
	printf("\n--�̼Ǹ��� ���� ��� ����--\n");
	/*
	printf("   ���Ӹ� : %s\n", (*gamePtr).name); // *gamePtr.name ? *( gamePtr.name)���� �ν�
	printf(" �߸ų⵵ : %d\n", (*gamePtr).year);
	printf("     ���� : %d\n", (*gamePtr).price);
	printf("   ���ۻ� : %s\n", (*gamePtr).company);
	*/

	printf("   ���Ӹ� : %s\n", gamePtr->name);
	printf(" �߸ų⵵ : %d\n", gamePtr->year);
	printf("     ���� : %d\n", gamePtr->price);
	printf("   ���ۻ� : %s\n", gamePtr->company);

	//���� ��ü ���� �Ұ�
	gameInfo1.friendGame = &gameInfo2;
	printf("\n--���� ��ü�� ���� ��� ����--\n");
	printf("   ���Ӹ� : %s\n", gameInfo1.friendGame->name);
	printf(" �߸ų⵵ : %d\n", gameInfo1.friendGame->year);
	printf("     ���� : %d\n", gameInfo1.friendGame->price);
	printf("   ���ۻ� : %s\n", gameInfo1.friendGame->company);

	// typedef
	// �ڷ����� ������ ����
	int i = 1;
	typedef int ����;
	typedef float �Ǽ�;
	���� �������� = 3; // int i = 3;
	�Ǽ� �Ǽ����� = 3.23f; // float f = 3.23f;
	printf("\n\n�������� : %d, �Ǽ����� %.2f\n\n", ��������, �Ǽ�����);

	typedef struct GameInfo ��������;
	�������� game1;
	game1.name = "�ѱ� ����";
	game1.year = 2015;

	GAME_INFO game2;
	game2.name = "�ѱ� ����2";
	game2.year = 2014;

	/*struct GmaeInformation game3;
	game3.name = "�ѱ� ����3";*/

	return 0;
}