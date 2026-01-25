#include <stdio.h>

int main(void) {
  long number_of_characters;

  number_of_characters = 0;
  while( (getchar()) != 'Q' ) {
    ++number_of_characters;
  }

  printf("Number of characters counted: %ld\n", number_of_characters);

  return 0;
}
