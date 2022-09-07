#ifndef SOYBEAN_CPP
#define SOYBEAN_CPP

#include "soybean.hpp"
#define GENDER 3

Soybean::~Soybean() { }

Soybean::Soybean(int x, int y) : Plant(x, y) {
}

bool Soybean::isPlant() {
    return true;
}

void Soybean::tick() {
}

void Soybean::draw(sf::RenderWindow& window) {
    /*float d = 35;
    sf::ConvexShape c;
    c.setPointCount(12);
    c.setPoint(0, sf::Vector2f(x - d/6, y - d/2));
    c.setPoint(1, sf::Vector2f(x + d/6, y - d/2));
    c.setPoint(2, sf::Vector2f(x + d/6, y - d/6));
    c.setPoint(3, sf::Vector2f(x + d/2, y - d/6));
    c.setPoint(4, sf::Vector2f(x + d/2, y + d/6));
    c.setPoint(5, sf::Vector2f(x + d/6, y + d/6));
    c.setPoint(6, sf::Vector2f(x + d/6, y + d/2));
    c.setPoint(7, sf::Vector2f(x - d/6, y + d/2));
    c.setPoint(8, sf::Vector2f(x - d/6, y + d/6));
    c.setPoint(9, sf::Vector2f(x - d/2, y + d/6));
    c.setPoint(10, sf::Vector2f(x - d/2, y - d/6));
    c.setPoint(11, sf::Vector2f(x - d/6, y - d/6));
    c.setFillColor(sf::Color(100, 250, 50));
    window.draw(c);*/
    auto windowSize = window.getSize();
    float width = drawWidth * windowSize.x;
    float height = drawWidth * windowSize.y;
    sf::RectangleShape r;
    r.setSize(sf::Vector2f(width, height));
    r.setPosition(x * width, y * height);
    r.setFillColor(sf::Color(0, 50, 0));
    window.draw(r);
}

#endif