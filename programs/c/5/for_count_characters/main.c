#include <stdio.h>

int main(void) {
  double number_of_characters;

  for (
    number_of_characters = 0;
    getchar() != (int)'Q';
    ++number_of_characters
  ) {}

  printf("%.0f\n", number_of_characters);

  return 0;
}
