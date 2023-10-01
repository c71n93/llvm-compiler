#include "graphics.h"
#include <SFML/Graphics.hpp>

constexpr int CELL_SIZE = 5;

sf::RenderWindow window;

void createWindow(int gridHeight, int gridWidth) {
    window.create(sf::VideoMode(CELL_SIZE * gridHeight, CELL_SIZE * gridWidth), "Game of life");
}
void setCell(int x, int y) {
    sf::RectangleShape cell;
    cell.setSize({CELL_SIZE, CELL_SIZE});
    cell.setPosition(x * CELL_SIZE, y * CELL_SIZE);
    cell.setOutlineColor(sf::Color::Green);
    window.draw(cell);
}
void flush() {
    window.display();
    window.clear();
}
bool isWindowOpen() {
    return window.isOpen();
}
bool closeWindowEvent() {
    sf::Event event;
    while (window.pollEvent(event)) {
        if (event.type == sf::Event::Closed) {
            window.close();
            return true;
        }
    }
    return false;
}
