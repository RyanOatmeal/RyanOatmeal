#include <stdio.h>

int main(void) {
  
  int character;
  int new_line_count;

  new_line_count = 0;
  while ( (character = getchar()) != 'Q') {
    if (character == '\n') {
      ++new_line_count;
    }
  }

  printf("Number of lines: %d\n", new_line_count);

  return 0;

}
