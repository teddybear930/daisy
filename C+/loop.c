#include <stdio.h>

int main_loop(void)
{
	/*printf("Hello World\n");
	printf("Hello World\n");
	printf("Hello World\n");
	printf("Hello World\n");
	printf("Hello World\n");*/

	// ++ �Ի�
	/*int a = 5;
	printf("a �� %d\n", a);
	a++;
	printf("a �� %d\n", a);
	a++;
	printf("a �� %d\n", a);
	a++;*/

	// ++�̶�? b=b+1�� ����
	/*int b = 10;
	printf("b �� %d\n", ++b);
	printf("b �� %d\n", b++);
	printf("b �� %d\n", b);*/

	/*int i = 1;
	printf("Hello World %d\n", i++); //1
	printf("Hello World %d\n", i++); //2
	printf("Hello World %d\n", i++); //3
	printf("Hello World %d\n", i++); //4
	printf("Hello World %d\n", i++); //5*/

	//�ݺ���
	//for, while, do while

	//for(����;����;����)
	/*for (int i = 1; i <= 10; i++)
	{
		printf("Hello World %d\n", i);
	}*/

	//while (����) { }
	/*int i = 1;
	while (i <= 10)
	{
		printf("Hello World %d\n", i++);
		//i++;
	}*/

	//do while
	//do {  } while (����);
	/*do {
		printf("Hello World %d\n", i++);
	} while (i <= 10);*/

	//2�� �ݺ���
	/*for (int i = 1; i <= 3; i++)
	{
		printf("ù ��° �ݺ��� : %d\n", i);

		for (int j = 1; j <= 5; j++)
		{
			printf("  �� ��° �ݺ��� : %d\n", j);
		}
	}*/

	//������
	/*
	2 x 1 = 2
	2 x 2 = 4
	2 x 3 = 6
	...
	9 x 9 = 81
	*/

	/*
	for (int i = 2; i <= 9; i++)
	{
		printf("%d�� ���\n", i);
		for (int j = 1; j <= 9; j++)
		{
			printf(" %d x %d = %d\n", i, j, i * j);
		}
	}*/

	/*

	*
	**
	***
	****
	*****

	*/

	/*for (int i = 0; i < 5; i++)
	{
		for (int j = 0; j <= i; j++)
		{
			printf("*");
		}
		printf("\n");
	}*/

	/* �� ������ ����

	SSSS*
	SSS**
	SS***
	S****
	*****

	*/

	/*for (int i = 0; i < 5; i++)
	{
		for (int j = i; j < 5 - 1; j++)
		{
			printf("S");
		}
		for (int k = 0; k <= i; k++)
		{
			printf("*");
		}
		printf("\n");
	}*/

	//�Ƕ�̵带 �׾ƶ� -> ������Ʈ
	/*

		*
	   ***
	  *****
	 *******
	*********

	*/
	int floor;
	printf("�� ������ �װڴ���?");
	scanf_s("%d", &floor);
	for (int i = 0; i < floor; i++)
	{
		for (int j = i; j < floor - 1; j++)
		{
			printf(" ");
		}
		for (int k = 0; k < i * 2 + 1; k++)
		{
			printf("*");
		}
		printf("\n");
	}

	return 0;
}