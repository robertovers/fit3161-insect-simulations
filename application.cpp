#include <SFML/Graphics.hpp>
#include "application.hpp"
#include "environment.hpp"
#include "location.hpp"
#include "agentController.hpp"

Application::Application() { }

void Application::run() { 

    sf::RenderWindow window(sf::VideoMode(1000, 1000), "Insect Simulations");
    window.setFramerateLimit(60);

    srand(time(NULL));

    // BasicMapGenerator mapGenerator = BasicMapGenerator(0, 0, 0, 0, 0, 0, 0);
    // AgentController agentController = AgentController(); 
    // Environment environment = mapGenerator.generateEnvironment(); 

    AgentController agentController = AgentController();
    Environment environment = Environment(50, 50);    
    agentController.addHoneyBees(environment);

    for (auto a : agentController.getAgents()) {
        a->setTarget(environment.getLocations()[25][25]);
    }

    while (window.isOpen()) {

        sf::Event event;

        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        window.clear();

        //for (auto a : agentController.getAgents()) {
        //    shared_ptr<Location> loc = a->getLocation(environment);
        //    loc->draw(window);
        //}

        for (auto row : environment.getLocations()) {
            for (auto loc : row) {
                if (loc->numAgents() == 1) {
                    loc->draw(window);
                }
            }
        }

        agentController.updateAgents(environment);
        agentController.drawAgents(window);
        
        window.display();
    }
}