#include "environment.hpp"

Environment::Environment() : width(0), height(0) { }

Environment::Environment(int w, int h) : width(w), height(h) {
    for (int y=0; y<height; y++) {
        locations.push_back(vector_shared_ptr<Location>(width));
        for (int x=0; x<width; x++) {
            locations[y][x] = std::make_shared<Location>(x, y);
        }
    }
}

vector2D_shared_ptr<Location>& Environment::getLocations() { 
    return locations; 
}

int Environment::getSize() {
    return width * height;
}

int Environment::getWidth() {
    return width;
}

int Environment::getHeight() {
    return height;
}