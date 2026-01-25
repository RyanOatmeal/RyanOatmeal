#include <stdio.h>

  /* I guess ignore these due to the commented block starting
   * on line 14.
   * #define INSIDE_BLANK 1
   * #define OUTSIDE_BLANK 0
   */

int main(void) {

  int character;
  /* int state */

  /* My initial solution using "forbidden knowledge".
   * I personally like it more, but I'll put the 
   * "better" version because it shows a nice concept
   * with blank loops and getchar.
   *
   *  state = OUTSIDE_BLANK;
   *  while ( (character = getchar()) != 'Q' ) {
   *    if (character == ' ') {
   *      state = INSIDE_BLANK;
   *    }
   *    if ((state == INSIDE_BLANK) && character != ' ') {
   *      state = OUTSIDE_BLANK;
   *      putchar(' ');
   *      putchar(character);
   *    }
   *    if (state == OUTSIDE_BLANK) {
   *      putchar(character);
   *    }
   *  }
   */

  while ( (character = getchar()) != 'Q' ) {
    if (character == ' ') {
      while ( (character = getchar()) == ' ');
      putchar(' ');
    }
    if (character != ' ') {
      putchar(character);
    }
  }

  return 0;

}
