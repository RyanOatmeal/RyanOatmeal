#include <ncurses.h>

/* For Sylvie */
#define CHUNGUS 20

int main(void) {
 
  /* I guess control is an int? The documentation isn't clear to me. */
  int control;
  int lil_guy_x;
  int lil_guy_y;
  int boundary_x;
  int boundary_y;
  int step_x;
  int step_y;

  initscr();

  /* Turns off cursos and stops getch from peppering screen with characters */
  curs_set(0);
  noecho();

  /* idk what is going on right here, but I think it helps with this logic. */
  cbreak(); 

  lil_guy_x = 0;
  lil_guy_y = 0;
  getmaxyx(stdscr, boundary_y, boundary_x);
  step_x = (boundary_x / CHUNGUS) + 1;
  step_y = (boundary_y / CHUNGUS) + 1;

  mvaddch(lil_guy_y, lil_guy_x, '#');
  refresh();

  while ( (control = getch()) != 'Q' ) {
    
    if (control == 'd') {
      mvaddch(lil_guy_y, lil_guy_x, ' ');
    
      if( (lil_guy_x + step_x) >= boundary_x) {
        lil_guy_x = (lil_guy_x + step_x) - boundary_x;
      } else {
        lil_guy_x = lil_guy_x + step_x;
      }
     
       mvaddch(lil_guy_y, lil_guy_x, '#');
    }

    if (control == 'w') {
      mvaddch(lil_guy_y, lil_guy_x, ' ');
     
      if((lil_guy_y - step_y) <= -1) {
        lil_guy_y = boundary_y + ( lil_guy_y - step_y );
      } else {
        lil_guy_y = lil_guy_y - step_y;
      }
     
       mvaddch(lil_guy_y, lil_guy_x, '#');
    }

    if (control == 'a') {
      mvaddch(lil_guy_y, lil_guy_x, ' ');
     
      if(lil_guy_x - step_x <= -1) {
        lil_guy_x = boundary_x + (lil_guy_x - step_x);
      } else {
        lil_guy_x = lil_guy_x - step_x;
      }
     
       mvaddch(lil_guy_y, lil_guy_x, '#');
    }

    if (control == 's') {
      mvaddch(lil_guy_y, lil_guy_x, ' ');
     
      if(lil_guy_y + step_y >= boundary_y) {
        lil_guy_y = lil_guy_y + step_y - boundary_y;
      } else {
        lil_guy_y = lil_guy_y + step_y;
      }
     
       mvaddch(lil_guy_y, lil_guy_x, '#');
    }
    
    refresh();
  }

  endwin();

  return 0;
}
