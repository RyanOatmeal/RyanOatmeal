#include <stdio.h>

int main(void) {

  char input;

  /* assignments actually evaluate to what gets assigned
   * on the left. Case in point, this while loop will 
   * terminate on E.
   */
  while( (input = getchar()) != 'E' ) {
    putchar(input);
  }

  printf("FYI, EOF is: %d", EOF);
  return 0;

}
