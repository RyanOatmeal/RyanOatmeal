#include <stdio.h>

/* This will provide a vertically oriented histogram which tracks the length of 
 * ascii words under 25 characters.
 * 
 * Note: This programs works only if you never type the character '0' lmao. That 
 *       exits the program (I don't want to do that EOF nonsense). By the time
 *       I finish K&R, I'll have much better tools than the EOF thing K&R wants
 *       or what I do here. So I'm fine with the temporary workaround.
 */

#define WORD_FREQUENCY_TABLE_WIDTH  25 
#define ASCII_TABLE_LENGTH         128
#define INSIDE_WORD                  0
#define OUTSIDE_WORD                 1
#define EXIT_CHARACTER             '0'

int main(void) {
  int word_frequencies[WORD_FREQUENCY_TABLE_WIDTH + 1];
  int word_frequency_index;
  int word_frequency;
  int previous_word_frequency;
  int this_word_frequency_width;
  int width_candidate;
  int last_frequency;
  int largest_word_frequency;
  int word_frequencies_height_index;
  int top_candidate;
  int character_frequencies[ASCII_TABLE_LENGTH];
  int character_frequency_index;

  /* `Unsigned` has not been mentioned by K&R, but it's accurate to what 
   * getchar returns anyways, so I think this is kosher.
   */
  unsigned char character;
  int word_length;
  int number_of_characters;
  int word_state;

  printf("Type in any text and end it with the character '0' on a new line\n");
  printf("in order to get a word length histogram for words with 25 or\n");
  printf("less characters:\n");
  printf("\n"); 

  for (
    word_frequency_index = 0; 
    word_frequency_index < WORD_FREQUENCY_TABLE_WIDTH + 1;
    ++word_frequency_index
  ) {
    word_frequencies[word_frequency_index] = 0;
  }
  for (
    character_frequency_index = 0;
    character_frequency_index < ASCII_TABLE_LENGTH;
    ++character_frequency_index
  ) {
    character_frequencies[character_frequency_index] = 0;
  }

  word_length = 0;
  number_of_characters = 0;
  word_state = OUTSIDE_WORD;

  while ( (character = getchar()) != EXIT_CHARACTER ) {
    ++number_of_characters;
    ++character_frequencies[character];

    if (
      word_state == INSIDE_WORD &&
      character  != '.'         &&
      character  != ','         &&
      character  != ':'         &&
      character  != '('         &&
      character  != ')'         &&
      character  != ';'         &&
      character  != '!'         &&
      character  != '\"'        &&
      character  != '?'         &&
      character  != '\''        &&
      character  != '-'
    ) {
      ++word_length;
    }

    if (
      character == ' '  ||
      character == '\n' ||
      character == '\t' 
    ) {
      if(word_state == INSIDE_WORD) {
        if (word_length < WORD_FREQUENCY_TABLE_WIDTH + 1) {
          ++word_frequencies[word_length];
        } 
        word_length = 0;
      }
      word_state = OUTSIDE_WORD;
    } else if (word_state == OUTSIDE_WORD) {
      word_state = INSIDE_WORD;
    } 
  }
  

  largest_word_frequency = 0;
  for (
    word_frequency_index = 0;
    word_frequency_index < WORD_FREQUENCY_TABLE_WIDTH + 1;
    ++word_frequency_index
  ) {
    top_candidate = word_frequencies[word_frequency_index];
    if (top_candidate > largest_word_frequency) {
      largest_word_frequency = top_candidate;
    } 
  }

  this_word_frequency_width = 0;
  last_frequency = word_frequencies[WORD_FREQUENCY_TABLE_WIDTH]; 
  if (last_frequency > 0) {
    this_word_frequency_width = WORD_FREQUENCY_TABLE_WIDTH; 
  } else {  
    for (
      word_frequency_index = 0;
      word_frequency_index < WORD_FREQUENCY_TABLE_WIDTH + 1;
      ++word_frequency_index
    ) {
      width_candidate = word_frequencies[word_frequency_index];
      if (word_frequency_index == 0) {
        previous_word_frequency = -1;
      } else {
        previous_word_frequency = word_frequencies[word_frequency_index - 1];
      }

      if (width_candidate == 0 && previous_word_frequency > 0) {
        this_word_frequency_width = word_frequency_index - 1;
      }
    }
  }

  if (this_word_frequency_width > 0) {
  
    printf("===============================================================\n");
    printf("Word length histogram:\n");
    printf("===============================================================\n");
    printf("\n\n");

    for (
      word_frequencies_height_index = largest_word_frequency;
      word_frequencies_height_index > 0;
      --word_frequencies_height_index 
    ) {
      for (
        word_frequency_index = 1;
        word_frequency_index < this_word_frequency_width + 1;
        ++word_frequency_index
      ) {
        word_frequency = word_frequencies[word_frequency_index];
        if ( word_frequency >= word_frequencies_height_index ) {
          printf(" # ");
        } else {
          printf("   ");
        }
      }
      printf("\n"); 
    }

    for (
      word_frequency_index = 1;
      word_frequency_index < this_word_frequency_width;
      ++word_frequency_index
    ) {
      printf("---");
    } 
    
    printf("--");
    printf("\n");  

    for (
      word_frequency_index = 1;
      word_frequency_index < this_word_frequency_width + 1;
      ++word_frequency_index
    ) {
      printf("%2d ", word_frequency_index);
    } 

    printf("\n");
  } else {
    printf("No words submitted.");
  }

  printf("\n\n");
  printf("Type in 'q' and hit enter to exit...\n");
  
  while (getchar() != 'q') {}

  return 0; 
}
