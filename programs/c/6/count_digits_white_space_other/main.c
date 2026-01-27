#include <stdio.h>

int main(void) {
  int character;
  int digit_index;
  int white_space_count;
  int other_character_count;
  int digit_count[10];

  white_space_count = 0;
  other_character_count = 0;
  
  for (digit_index = 0; digit_index < 10; ++digit_index) {
    digit_count[digit_index] = 0;
  }

  while ( (character = getchar()) != 'Q' ) {
    if (character >= '0' && character <= '9') {
      /* This arithmetic expression does an integer cast. 
       * I guess it shows some important concepts. But in
       * the future, I'll just be adding (int)character to
       * to the array.
       */
      ++digit_count[character - '0'];
    } else if (
      character == ' '  || 
      character == '\n' ||
      character == '\t'
    ) {
      ++white_space_count;
    } else {
      ++other_character_count;
    }
  }

  printf("Digit count: ");
  for (digit_index = 0; digit_index < 10; ++digit_index) {
    printf(" %d", digit_count[digit_index]);
  }
  printf("\n");

  printf("White space count:     %d\n", white_space_count);
  printf("Other character count: %d\n", other_character_count); 

  return 0; 
}






