#include <stdio.h>

/* This code isn't elegant at all but I'm trying
 * to avoid features that K&R hasn't told me about yet.
 * Otherwise, this would be a cute little switch 
 * case without the need of a flag.
 */

int main(void) {

  char character;
  int escape_character_flag;

  escape_character_flag = 0;
  while ( (character = getchar()) != 'Q' ) {
    if (character == '\t') {
      putchar('\\');
      putchar('t');
      escape_character_flag = 1;
    }
    if (character == ' ') {
      putchar('\\');
      putchar('S');
      escape_character_flag = 1;
    }

    if (character == '\\') {
      putchar('\\');
      putchar('\\');
      escape_character_flag = 1;
    }

    if (escape_character_flag != 1) {
      putchar(character);
    }

    escape_character_flag = 0;
  }

  return 0;

}
