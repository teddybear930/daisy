#include <stdio.h>
/*int main(void)
{
	printf("Hello World");
	return 0;
}*/


int main_printfscanf(void)
{
	//������ ������ ���� ����
	/*int age = 12;
	printf("%d\n", age);
	age = 13;
	printf("%d\n", age);*/


	//�Ǽ��� ������ ���� ����
	/*float f = 46.5f;
	printf("%.2f\n", f);
	double d = 4.428;
	printf("%.2lf\n", d);*/


	/*const int YEAR = 2000; //���
	printf("�¾ �⵵ : %d\n", YEAR);
	//YEAR = 2001;*/

	//printf
	// ����
	/*int add = 3 + 7; // 10
	printf("3 + 7 = %d\n", add);
	printf("%d + %d = %d\n", 3, 7, 3 + 7);*/

	//scanf
	//Ű���� �Է��� �޾Ƽ� ����
	/*int input;
	printf("���� �Է��ϼ��� : ");
	scanf_s("%d", &input);
	printf("�Է°� : %d\n", input);
	*/

	/*int one, two, three;
	printf("3���� ������ �Է��ϼ��� : ");
	scanf_s("%d %d %d", &one, &two, &three);
	printf("ù��° �� : %d\n", one);
	printf("�ι�° �� : %d\n", two);
	printf("����° �� : %d\n", three);
	*/

	//����(�ѱ���)
	/*char c = 'A';
	printf("%c\n", c);*/

	//���ڿ�(�� ���� �̻��� ���� ����)
	/*char str[256];
	scanf_s("%s", str, sizeof(str));
	printf("%s\n", str);*/

	// ������Ʈ
	//�������� �������� ������ �Լ� (���� �ۼ�)
	//�̸�, ����, ������, Ű, ���˸�
	char name[256];
	printf("�̸��� �����Դϱ�? ");
	scanf_s("%s", name, sizeof(name));

	int age;
	printf("����Դϱ�? ");
	scanf_s("%d", &age);

	float weight;
	printf("�����Դ� �� kg �Դϱ�? ");
	scanf_s("%f", &weight);

	double height;
	printf("Ű�� �� cm �Դϱ�? ");
	scanf_s("%lf", &height);

	char what[256];
	printf("���� ���˸� ���������ϱ�? ");
	scanf_s("%s", what, sizeof(what));

	//�������� ���

	printf("\n\n--- ������ ���� ---\n\n");
	printf(" �̸�    : %s\n", name);
	printf(" ����    : %d\n", age);
	printf(" ������  : %.2f\n", weight);
	printf(" Ű      : %.2lf\n", height);
	printf(" ����    : %s\n", what);

	return 0;
}