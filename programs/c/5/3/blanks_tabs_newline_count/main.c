#include <stdio.h>

int main(void) {
  
  int character;
  int new_line_count;
  int blank_count;
  int tab_count;

  new_line_count = 0;
  blank_count = 0;
  tab_count = 0;

  while ( (character = getchar()) != 'Q' ) {
    if (character == '\n') {
      ++new_line_count;
    }
    if (character == '\t') {
      ++tab_count;
    }
    if (character == ' ') {
      ++blank_count;
    }
  }

  printf("Number of new lines: %d\n", new_line_count);
  printf("Number of blanks:    %d\n", blank_count);
  printf("Number of tabs:      %d\n", tab_count);

  return 0;

}
