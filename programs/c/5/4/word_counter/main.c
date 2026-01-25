#include <stdio.h>

#define INSIDE_WORD  1
#define OUTSIDE_WORD 0

int main(void) {

  char character;
  int number_of_new_lines;
  int number_of_words;
  int number_of_characters;
  int word_state;

  printf("Word, character, and line counter.\n");
  printf("Type '0' and hit enter to exit.\n");
  printf("\n");

  number_of_new_lines = 0;
  number_of_words = 0;
  number_of_characters = 0;
  word_state = OUTSIDE_WORD;

  while ( (character = getchar()) != '0') {
    ++number_of_characters;

    if (character == '\n') {
      ++number_of_new_lines;
    }

    if (
      character == ' '  ||
      character == '\n' ||
      character == '\t'
    ) {
      word_state = OUTSIDE_WORD;
    } else if (word_state == OUTSIDE_WORD) {
      word_state = INSIDE_WORD;
      ++number_of_words;
    }
  }

  printf("Number of lines:      %d\n", (number_of_new_lines + 1));
  printf("Number of words:      %d\n", number_of_words);
  printf("Number of characters: %d\n", number_of_characters);

  return 0;

}
