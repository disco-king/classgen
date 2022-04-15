#include "Example.hpp"

Example::Example() {}

Example::~Example() {}

Example::Example(Example const & src){

	*this = src;
}

Example &Example::operator=(Example const & src){

	//this->attr1 = src.attr1;
	//this->attr2 = src.attr2;
	return *this;
}
