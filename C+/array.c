#include <stdio.h>

int main_array(void)
{
	//�迭
	/*
	int subway_1 = 30; //����ö 1ȣ���� 30���� Ÿ�� �ִ�.
	int subway_2 = 40;
	int subway_3 = 50;

	printf("����ö 1ȣ���� %d ���� Ÿ�� �ֽ��ϴ�.\n", subway_1);
	printf("����ö 1ȣ���� %d ���� Ÿ�� �ֽ��ϴ�.\n", subway_2);
	printf("����ö 1ȣ���� %d ���� Ÿ�� �ֽ��ϴ�.\n", subway_3);
	*/

/*
	// ���� ���� ������ �Բ�, ���ÿ� ����
	int subway_array[3]; //[]���ȣ ���� ���� ��ŭ�� int�� ���� �迭�� ������̳�?
	// �迭�� 0���� ���� �˴ϴ�.
	subway_array[0] = 30;
	subway_array[1] = 40;
	subway_array[2] = 50;

	for (int i = 0; i < 3; i++)
	{
		printf("����ö %d ȣ���� %d���� Ÿ�� �ֽ��ϴ�.\n", i + 1, subway_array[i]);
	}
*/

	//�� ���� ���
	/*int arr[10] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
	for (int i = 0; i < 10; i++)
	{
		printf("%d\n", arr[i]);
	}*/

	//���� �ʱ�ȭ�� �ݵ�� �ؾ��Ѵ�.
	/*int arr[10];
	for (int i = 0; i < 10; i++)
	{
		printf("%d\n", arr[i]);
	}*/

	//�迭 ũ��� �׻� ����� ����
	/*int size = 10;
	int arr[10];*/

	/*
	int arr[10] = { 1, 2 }; // 3��° �����ʹ� �ڵ����� '0'���� �ʱ�ȭ �ȴ�.
	for (int i = 0; i < 10; i++)
	{
		printf("%d\n", arr[i]);
	}
	*/

	//int arr[] = { 1, 2 }; //arr[2]

	/*
	float arr_f[5] = { 1.0f, 2.0f, 3.0f };
	for (int i = 0; i < 5; i++)
	{
		printf("%.2f\n", arr_f[i]);
	}
	*/

	// ���� vs ���ڿ�
	//char c = 'A';
	//printf("%c\n", c);

	//���ڿ� ������ '��'�� �ǹ��ϴ� NULL ���� '\0' �� ���ԵǾ�� ��
	//char str[6] = "coding"; // [c][o][d][i][n][g]
	//char str[7] = "coding";
	//printf("%s\n", str);


	char str[] = "coding";
	//printf("%d\n", str);
	//printf("%d", sizeof(str)); //7
	/*
	for (int i = 0; i < sizeof(str); i++)
	{
		printf("%c\n", str[i]);
	}
	*/
	/*
	char kor[] = "�����ڵ�";
	printf("%s\n", kor);
	printf("%d\n", sizeof(kor)); // 8����Ʈ�� ������ ����ǥ���ϴ°� ���� 1����Ʈ ���� //9�� ���

	// ���� 1���� : 1 byte
	// �ѱ� 1���� : 2 byte
	// char ũ�� : 1 byte
	*/

	//char c_array[7] = { 'c','o','d','i','n','g','\0'};
	//char c_array[6] = { 'c','o','d','i','n','g' }; // null ������� ������ �̻��� ���ڰ� ���´�, �νĺҰ�
	//printf("%s\n", c_array);

	char c_array[10] = { 'c','o','d','i','n','g' };
	//printf("%s\n", c_array)
	/*for (int i = 0; i < sizeof(c_array); i++)
	{
		printf("%c\n", c_array[i]);
	}*/

	/*for (int i = 0; i < sizeof(c_array); i++)
	{
		printf("%d\n", c_array[i]); // ASCII �ڵ� �� ��� (null ���� 0 ���� �Էµ�)
	}*/

	//���ڿ� �Է� �ޱ� : ������ ���� ���� ����
	/*
	char name[256];
	printf("�̸��� �����Դϱ�? ");
	scanf_s("%s", name, sizeof(name));
	printf("%s\n", name);
	*/

	// ���� : ASCII �ڵ��? ANSI(�̱�ǥ����ȸ)���� ������ ǥ�� �ڵ� ü��
	// 7 bit �� 128�� �ڵ�(0~127)
	// a : 97 (���� a�� �ƽ�Ű�ڵ� ������)
	// A : 65
	// 0 : 48

	/*
	printf("%c\n", 'a'); // a
	printf("%d\n", 'a'); // 97
	
	printf("%c\n", 'b'); // b
	printf("%d\n", 'b'); // 98

	printf("%c\n", 'A'); // b   c��? ������
	printf("%d\n", 'A'); // 98   d��? ������

	printf("%c\n", '\0'); // �����
	printf("%d\n", '\0'); // 0

	printf("%c\n", '0'); // 0
	printf("%d\n", '0'); // 48

	printf("%c\n", '1'); // 1
	printf("%d\n", '1'); // 49
	*/

	//����2 : 0~127 ������ �ƽ�Ű�ڵ� ���Ұ��� �ش��ϴ� ���� Ȯ��
	/*
	for (int i = 0; i < 128; i++)
	{
		printf("�ƽ�Ű �ڵ� ���� %d : %c\n", i, i);
	}
	*/



	return 0;
}