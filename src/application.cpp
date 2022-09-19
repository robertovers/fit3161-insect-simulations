#include <SFML/Graphics.hpp>
#include "application.hpp"
#include "environment.hpp"
#include "basicMapGenerator.hpp"
#include "agentController.hpp"
#include "initialDisplay.hpp"
#include "utility.hpp"

Application::Application() { }

void Application::run() { 

    sf::Clock clock;
    Metrics metrics;

    sf::RenderWindow window(sf::VideoMode(1000, 1000), "Insect Simulations");
    window.setFramerateLimit(30);

    BasicMapGenerator mapGenerator = BasicMapGenerator(50, 50, 50, 1);
    AgentController agentController = AgentController();
    
    Environment environment = mapGenerator.generateEnvironment(agentController);

    InitialDisplay initialUI = InitialDisplay();
    initialUI.run();
    std::cout << "Passed initialUI.start() call" << std::endl;
   
    while (window.isOpen()) {

        sf::Event event;
        metrics.updateMetrics(environment, clock.getElapsedTime());

        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        window.clear();

        agentController.updateAgents(environment);
        
        environment.draw(window);
        agentController.drawAgents(window);
        
        window.display();

        metrics.toConsole();
    }
}