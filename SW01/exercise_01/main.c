#include <stdio.h>

void printNumbersGoto (int n);
void printNumberFor (int n);
void printNumberRecursiveFunction (int n);
void checkForRecursion (int i, int maximum);

int main (int n) {
	printNumbersGoto (7);
	printf(" = printNumbersGoto(7)\n");
	printNumbersFor (7);
	printf(" = printNumbersGoto(7)\n");
	printNumbersRecursiveFunction (7);
	printf(" = printNumbersRecursivefunction(7)\n");
	return 0;
}

void printNumbersGoto (int n) {
	int i = 0;
	start:
		printf("%d ", i);
		i++;
		if (i<=n) {
			goto start;
		}
}

void printNumbersFor (int n) {
	int i;
	for(i = 0; i <= n; i++) {
		printf("%d ", i);
	}
}

void printNumbersRecursiveFunction (int n) {
	checkForRecursive (0, n);
}

void checkForRecursive (int i, int maximum) {
	if (i > maximum) {
		return;
	} else {
		printf("%d ", i);
		checkForRecursive (i+1, maximum);
	}
}

