#include "sim-graphics.h"

extern void app();

extern void createWindow(int gridWidth, int gridHeight);
extern bool closeWindowEvent();

int main() {
    createWindow(GRID_WIDTH, GRID_HEIGHT);
    while (true) {
        if (closeWindowEvent()) {
            break;
        }
        app();
    }
    return 0;
}
