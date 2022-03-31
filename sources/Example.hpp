#pragma once

#include <iostream>

class Example
{

private:


public:

	Example();
	Example(Example const &);
	~Example();

	Example & operator=(Example const &);

};
