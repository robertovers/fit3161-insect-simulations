#include <SFML/Graphics.hpp>
#include "application.hpp"
#include "environment.hpp"
#include "basicMapGenerator.hpp"
#include "agentController.hpp"

Application::Application() { }

void Application::run() { 

    sf::RenderWindow window(sf::VideoMode(1000, 1000), "Insect Simulations");

    BasicMapGenerator mapGenerator = BasicMapGenerator(50, 50, 5, 50);
    AgentController agentController = AgentController();
    
    Environment environment = mapGenerator.generateEnvironment(agentController);

    while (window.isOpen()) {

        sf::Event event;

        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        window.clear();

        agentController.updateAgents(environment);
        
        agentController.drawAgents(window);
        
        window.display();
    }
}