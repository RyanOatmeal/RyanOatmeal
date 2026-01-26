#include <stdio.h>

#define INSIDE_WORD  1
#define OUTSIDE_WORD 0

int main(void) {

  char character;
  int word_state;

  printf("One word per line printer.\n");
  printf("Type '0' and hit enter to exit.\n");
  printf("\n");

  word_state = OUTSIDE_WORD;
  while ( (character = getchar()) != '0') {
    if (
      character != ' '  &&
      character != '\n' &&
      character != '\t'
    ) {
      putchar(character);
      word_state = INSIDE_WORD;
    } else if ( word_state == INSIDE_WORD ) {
      putchar('\n');
      word_state = OUTSIDE_WORD;
    }
  }

  return 0;

}
