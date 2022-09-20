/**
 * FIT3161/3162 Computer Science Project
 * Insect Simulation for Improved Pollination and Pest Control
 * Group CS6
 * 
 * @file application.cpp
 * @brief Application class that initiates and controls the simulation.
 * @date 2022-09-10
 */

#include <SFML/Graphics.hpp>
#include <iostream>
#include "imgui.h"
#include "imgui-SFML.h"
#include "application.hpp"
#include "environment.hpp"
#include "basicMapGenerator.hpp"
#include "agentController.hpp"
#include "initialUI.hpp"
#include "utility.hpp"
#include "display/statsWindow.hpp"

Application::Application() { }

void Application::run() { 
    // initial display for acquiring params from user
    Parameters params;
    InitialUI initialUI = InitialUI();
    params = initialUI.run();

    // Attempt at making program conclude early if initial UI is not closed via load simulation button. But not working...
    if (!params.normal_exit) {
        std::cout << "Program exited by user\n";
        exit(1);
    }

    // simulation window start
    float initialWindowWidth = params.rows * params.scale;
    float initialWindowHeight = params.columns * params.scale;

    sf::Clock clock;
    auto metrics = std::make_shared<Metrics>();

    sf::RenderWindow window(sf::VideoMode(initialWindowWidth, initialWindowHeight), "Nectar");

    window.setFramerateLimit(30);

    // set up environment
    BasicMapGenerator mapGenerator = BasicMapGenerator(params.rows, params.columns, params.bees, params.soybean_p*100);
    auto agentController = std::make_shared<AgentController>();
    auto environment = std::make_shared< Environment>(mapGenerator.generateEnvironment(*agentController));

    // set up display parts
    ImGui::SFML::Init(window);

    StatsWindow statsWindow = StatsWindow(metrics);
    auto simDisplay = SimulationDisplay(agentController, environment);
    simDisplay.updateViewport(initialWindowWidth, initialWindowHeight);
   
    while (window.isOpen()) {

        sf::Event event;
        metrics->updateMetrics(*environment, clock.getElapsedTime());
        sf::Clock deltaClock;

        while (window.pollEvent(event)) {
            ImGui::SFML::ProcessEvent(window, event);

            if (event.type == sf::Event::Closed)
                window.close();
            else if (event.type == sf::Event::Resized) {
                simDisplay.updateViewport(event.size.width, event.size.height);
             }
        }   

        ImGui::SFML::Update(window, deltaClock.restart());

        window.clear();

        agentController->updateAgents(*environment);

        window.setView(simDisplay.getView());
        simDisplay.draw(window, sf::RenderStates());

        statsWindow.draw();

        ImGui::SFML::Render(window);

        window.display();
    }
    ImGui::SFML::Shutdown();
}
