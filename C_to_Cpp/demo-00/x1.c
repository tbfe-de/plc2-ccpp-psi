void x1_internal(int *p_current, int *p_minimum, int *p_maximum, int *p_first, int v) {
	*p_current= v;
	if (*p_first)
		*p_minimum= *p_maximum= v;
	if (*p_minimum > v)
		*p_minimum= v;
	if (*p_maximum < v)
		*p_maximum= v;
	*p_first= 0;
}
	
#ifdef X
void demo_x1() {
	{
		extern int *sensor_addr;
		extern int current;
		extern int minimum;
		extern int maximum;
		extern int first;

		x1_internal(&current, &minimum, &maximum, &first, *sensor_addr);
	}
#if X >= 2
	{
		extern int *sensor2_addr;
		extern int current2;
		extern int minimum2;
		extern int maximum2;
		extern int first2;

		x1_internal(&current2, &minimum2, &maximum2, &first2, *sensor2_addr);
	}
#endif
#if X >= 3
	{
		extern int *sensor3_addr;
		extern int current3;
		extern int minimum3;
		extern int maximum3;
		extern int first3;

		x1_internal(&current3, &minimum3, &maximum3, &first3, *sensor3_addr);
	}
#endif
#if X >= 4
	{
		extern int *sensor4_addr;
		extern int current4;
		extern int minimum4;
		extern int maximum4;
		extern int first4;

		x1_internal(&current4, &minimum4, &maximum4, &first4, *sensor4_addr);
	}
#endif
#if X >= 5
	{
		extern int *sensor5_addr;
		extern int current5;
		extern int minimum5;
		extern int maximum5;
		extern int first5;

		x1_internal(&current5, &minimum5, &maximum5, &first5, *sensor5_addr);
	}
#endif
#if X >= 6
	{
		extern int *sensor6_addr;
		extern int current6;
		extern int minimum6;
		extern int maximum6;
		extern int first6;

		x1_internal(&current6, &minimum6, &maximum6, &first6, *sensor6_addr);
	}
#endif
#if X >= 7
	{
		extern int *sensor7_addr;
		extern int current7;
		extern int minimum7;
		extern int maximum7;
		extern int first7;

		x1_internal(&current7, &minimum7, &maximum7, &first7, *sensor7_addr);
	}
#endif
#if X >= 8
	{
		extern int *sensor8_addr;
		extern int current8;
		extern int minimum8;
		extern int maximum8;
		extern int first8;

		x1_internal(&current8, &minimum8, &maximum8, &first8, *sensor8_addr);
	}
#endif
#if X >= 9
	{
		extern int *sensor9_addr;
		extern int current9;
		extern int minimum9;
		extern int maximum9;
		extern int first9;

		x1_internal(&current9, &minimum9, &maximum9, &first9, *sensor9_addr);
	}
#endif
}
#endif
