#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//function to test overflow
void IShouldNeverBeCalled(){
	puts("I should never be called");
	exit(0);
}

// This is our vulnerable function
void vulnerable(char *arg){
	char buff[100];
	// to print return address
	printf("%p\n", &buff[0]);
	strcpy(buff,arg);
}

//pass argument in the vulnerable function
int main(int argc, char *argv[]){
	vulnerable(argv[1]);
	return 0;
}
