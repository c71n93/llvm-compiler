#include "graphics.h"

constexpr int GRID_HEIGHT = 200;
constexpr int GRID_WIDTH = 200;

int main() {
    createWindow(GRID_HEIGHT, GRID_WIDTH);
    while (true) {
        if (closeWindowEvent()) {
            break;
        }
        setCell(0, 0);
        flush();
    }
    return 0;
}