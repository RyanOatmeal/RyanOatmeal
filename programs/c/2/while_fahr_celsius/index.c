#include <stdio.h>

/* Fahrenheit to celsius conversion tables given a
 * few sample values.
 */

int main(void) {

  float fahrenheit;
  float celsius;

  int lower_bound;
  int upper_bound;
  int step_value;

  lower_bound = 0;
  upper_bound = 300;
  step_value = 10;

  printf("Fahrenheit | Celsius\n");
  printf("--------------------\n");

  fahrenheit = lower_bound;
  while (fahrenheit <= upper_bound) {
    celsius = (5.0/9.0) * (fahrenheit - 32.0);
    printf("%10.0f | %5.1f\n", fahrenheit, celsius);
    fahrenheit = fahrenheit + step_value;
  }

  lower_bound = -100;
  upper_bound = 100;
  step_value = 10;

  printf("\n");
  printf("Celsius | Fahrenheit\n");
  printf("--------------------\n");

  celsius = lower_bound;
  while (celsius <= upper_bound) {
    fahrenheit = 32.0 + ((9.0/5.0) * celsius);
    printf("%7.0f | %5.1f\n", celsius, fahrenheit);
    celsius = celsius + step_value;
  }

  return 0;

}
