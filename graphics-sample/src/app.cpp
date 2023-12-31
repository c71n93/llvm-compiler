#include "sim-graphics.h"

void randomGen(bool *gen, int freq);
void drawGen(const bool *gen);
void calcGen(const bool *prevGen, bool *nextGen);
bool isCellAlive(int x, int y, const bool *prevGen);
int wrapValue(int v, int maxValue);
void swap(bool *&prevGen, bool *&nextGen);

int app() {
    bool gen1[GRID_WIDTH * GRID_HEIGHT];
    bool gen2[GRID_WIDTH * GRID_HEIGHT];
    bool *prevGen = gen1;
    bool *nextGen = gen2;
    randomGen(prevGen, 3);
    while (true) {
        calcGen(prevGen, nextGen);
        drawGen(nextGen);
        swap(prevGen, nextGen);
        flushWindow();
    }
    return 0;
}

void randomGen(bool *gen, int freq) {
    for (int y = 0; y < GRID_HEIGHT; y++) {
        for (int x = 0; x < GRID_WIDTH; ++x) {
            gen[y * GRID_WIDTH + x] = ((randInt() % freq) == 0);
        }
    }
}
void drawGen(const bool *gen) {
    for (int y = 0; y < GRID_HEIGHT; y++) {
        for (int x = 0; x < GRID_WIDTH; ++x) {
            if (gen[y * GRID_WIDTH + x]) {
                setCell(x, y);
            }
        }
    }
}
void calcGen(const bool *prevGen, bool *nextGen) {
    for (int y = 0; y < GRID_HEIGHT; ++y) {
        for (int x = 0; x < GRID_WIDTH; ++x) {
            nextGen[y * GRID_WIDTH + x] = isCellAlive(x, y, prevGen);
        }
    }
}
bool isCellAlive(int x, int y, const bool *prevGen) {
    int neighborSum = 0;
    for (int i = x - 1; i <= x + 1; ++i) {
        for (int j = y - 1; j <= y + 1; ++j) {
            int xi = wrapValue(i, GRID_WIDTH);
            int yj = wrapValue(j, GRID_HEIGHT);
            neighborSum += prevGen[yj * GRID_WIDTH + xi];
        }
    }
    int currentPos = y * GRID_WIDTH + x;
    neighborSum -= prevGen[currentPos];
    if (prevGen[currentPos] && (neighborSum == 2 || neighborSum == 3))
        return true;
    if (!prevGen[currentPos] && neighborSum == 3)
        return true;
    return false;
}
int wrapValue(int v, int maxValue) {
    if (v == -1) return maxValue - 1;
    if (v == maxValue) return 0;
    return v;
}
void swap(bool *&prevGen, bool *&nextGen) {
    bool *tmp = prevGen;
    prevGen = nextGen;
    nextGen = tmp;
}
