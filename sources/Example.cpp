#include "Example.hpp"

Example::Example() {}

Example::~Example() {}

Example::Example(Example const & src){

	*this = src;

	return;
}

Example &Example::operator=(Example const & src){

	return *this;
}
