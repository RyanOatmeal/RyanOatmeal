#include <ncurses.h>

int main(void) {
  initscr();
  
  addstr("Hello, World!!");
  refresh();

  getchar();
  endwin();

  return 0;
}
