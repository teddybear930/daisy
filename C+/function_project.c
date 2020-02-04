#include <stdio.h>
#include <time.h>

int getRandomNumber(int level);
void showQuestion(int level, int num1, int num2);
void success();
void fail();

int main_function_project(void)
{
	// 문이 5개가 있고, 각 문마다 점점 어려운 수식 퀴즈가 출제 됩니다. (랜덤)
	// 맞히면 통과, 틀리면 실패

	srand(time(NULL));
	int count = 0; // 맞히 문제의 갯수
	for (int i = 1; i <= 5; i++)
	{
		// x * y = ?
		int num1 = getRandomNumber(i);
		int num2 = getRandomNumber(i);
		//printf("%d * %d ?", num1, num2);
		showQuestion(i, num1, num2);

		int answer = -1;
		scanf_s("%d", &answer);
		if (answer == -1)
		{
			printf("프로그램을 종료합니다.\n");
			exit(0); // 지금바로 프로그램을 종료하라! break와 다른의미
		}
		else if (answer == num1 * num2)
		{
			//성공
			success();
			count++;
		}
		else
		{
			//실패
			fail();
		}
	}

	printf("\n\n 당신은 5개의 도어락 비밀번호 중 %d 개를 맞췄습니다.\n", count);

	return 0;
}

int getRandomNumber(int level)
{
	return rand() % (level * 7) + 1;
}

void showQuestion(int level, int num1, int num2)
{
	printf("\n\n\n\n\n\n\n\n########## %d 번째 비밀번호 ##########\n", level);
	printf("\n\t%d X %d = ?\n\n", num1, num2);
	printf("########################################\n");
	printf("\n비밀번호를 입력하세요. ( 종료 : -1 ) >> ");
}

void success()
{
	printf("\n >> Good! \n");
}

void fail()
{
	printf("\n >> Fail! \n");
}