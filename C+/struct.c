#include <stdio.h>

struct GameInfo {
	char * name;
	int year;
	int price;
	char * company;

	struct GameInfo* friendGame; // 연관 업체 게임
};

typedef struct {
	char* name;
	int year;
	int price;
	char* company;

	struct GameInfo* friendGame; // 연관 업체 게임
} GAME_INFO;

int main_struct(void)
{
	// [게임 출시]
	// 이름 : Dd
	// 발매년도 : 2020년
	// 가격 : 50원
	// 제작사 : D_d

	char * name = "Dd";
	int year = 2020;
	int price = 50;
	char * company = "D_d";

	// [추가 게임 출시]
	// 이름 : Dd2
	// 발매년도 : 2020년
	// 가격 : 500원
	// 제작사 : D_d2

	char * name2 = "Dd2";
	int year2 = 2020;
	int price2 = 500;
	char * company2 = "D_d2";

	//구조체 사용
	struct GameInfo gameInfo1;
	//struct GameInfo gameInfo2;
	gameInfo1.name = "Dd";
	gameInfo1.year = 2020;
	gameInfo1.price = 50;
	gameInfo1.company = "D_d";

	//구조체 출력
	printf("\n--게임 출시 정보--\n");
	printf("   게임명 : %s\n", gameInfo1.name);
	printf(" 발매년도 : %d\n", gameInfo1.year);
	printf("     가격 : %d\n", gameInfo1.price);
	printf("   제작사 : %s\n", gameInfo1.company);

	//구조체를 배열처럼 초기화(구조체 사용 + 출력)
	struct GameInfo gameInfo2 = {"Dd2", 2020, 500, "D_d2"};
	printf("\n--추가 게임 출시 정보--\n");
	printf("   게임명 : %s\n", gameInfo2.name);
	printf(" 발매년도 : %d\n", gameInfo2.year);
	printf("     가격 : %d\n", gameInfo2.price);
	printf("   제작사 : %s\n", gameInfo2.company);

	//구조체 배열
	struct GameInfo gameArray[2] = {
		{"Dd", 2020, 50, "D_d"} ,
		{"Dd2", 2020, 500, "D_d2"}
	};

	//구조체 포인터
	struct GameInfo * gamePtr; //미션맨
	gamePtr = &gameInfo1;
	printf("\n--미션맨의 게임 출시 정보--\n");
	/*
	printf("   게임명 : %s\n", (*gamePtr).name); // *gamePtr.name ? *( gamePtr.name)으로 인식
	printf(" 발매년도 : %d\n", (*gamePtr).year);
	printf("     가격 : %d\n", (*gamePtr).price);
	printf("   제작사 : %s\n", (*gamePtr).company);
	*/

	printf("   게임명 : %s\n", gamePtr->name);
	printf(" 발매년도 : %d\n", gamePtr->year);
	printf("     가격 : %d\n", gamePtr->price);
	printf("   제작사 : %s\n", gamePtr->company);

	//연관 업체 게임 소개
	gameInfo1.friendGame = &gameInfo2;
	printf("\n--연관 업체의 게임 출시 정보--\n");
	printf("   게임명 : %s\n", gameInfo1.friendGame->name);
	printf(" 발매년도 : %d\n", gameInfo1.friendGame->year);
	printf("     가격 : %d\n", gameInfo1.friendGame->price);
	printf("   제작사 : %s\n", gameInfo1.friendGame->company);

	// typedef
	// 자료형에 별명을 지정
	int i = 1;
	typedef int 정수;
	typedef float 실수;
	정수 정수변수 = 3; // int i = 3;
	실수 실수변수 = 3.23f; // float f = 3.23f;
	printf("\n\n정수변수 : %d, 실수변수 %.2f\n\n", 정수변수, 실수변수);

	typedef struct GameInfo 게임정보;
	게임정보 game1;
	game1.name = "한글 게임";
	game1.year = 2015;

	GAME_INFO game2;
	game2.name = "한글 게임2";
	game2.year = 2014;

	/*struct GmaeInformation game3;
	game3.name = "한글 게임3";*/

	return 0;
}