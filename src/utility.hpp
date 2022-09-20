#ifndef utility_hpp
#define utility_hpp

#include <SFML/Graphics.hpp>
#include <string>
#include "environment.hpp"

struct Metrics {
    int days;
    int hours;
    int mins;
    int secs;
    float hive_nectar;
    float pollinated_count;

    void updateMetrics(Environment& env, sf::Time time);
    std::string timeString();
    void toConsole();
};

struct Parameters {
    int rows;
    int columns;
    int scale;
    int bees;
    float soybean_p;
    bool normal_exit;

    Parameters();
}

#endif