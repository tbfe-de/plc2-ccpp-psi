%module thermostate
%{
#include "thermostate.h"
%}

int system_heater;
void switch_heater (float temp);
