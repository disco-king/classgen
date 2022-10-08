#pragma once

#include <iostream>

class Example
{

private:


public:

	Example();
	Example(Example const &src);
	~Example();

	Example & operator=(Example const &src);

};
