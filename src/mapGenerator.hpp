#ifndef mapgenerator_hpp
#define mapgenerator_hpp

#include "environment.hpp"
#include "agentController.hpp"

// Generates a populated map for the simulation to run on
class MapGenerator {
public:
	virtual Environment generateEnvironment(AgentController& agentController) = 0;
};

// Generates an environment with agents and objects randomly scattered around
class BasicMapGenerator : MapGenerator {
private:
	int envSizeX;
	int envSizeY;
	int beeCount;
	int cropChance;

public:
	/**
	* Settings for generated map
	*
	* @param envSizeX	 Length of the map
	* @param envSizeY	 Height of the map
	* @param beeCount	 Number of bees in the map
	* @param cropChance  Chance that a location will have a crop on it, out of 100.
	*					 For example, cropChance = 50 means 50/100 = 1/2 chance
	*/
	BasicMapGenerator(int envSizeX, int envSizeY, int beeCount, int cropChance);
	Environment generateEnvironment(AgentController& agentController);
};

#endif