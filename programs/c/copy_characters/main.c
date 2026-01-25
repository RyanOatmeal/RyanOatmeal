#include <stdio.h>

int main(void) {

  char input;

  /* assignments actually evaluate to what gets assigned
   * on the left. Case in point, this while loop will 
   * terminate on E.
   *
   * Note that getchar() returns an integer cast of the char
   * and so we do an integer cast of 'E'.
   */
  while( (input = getchar()) != (int)'E' ) {
    putchar(input);
  }

  printf("FYI, EOF is: %d", EOF);
  return 0;

}
