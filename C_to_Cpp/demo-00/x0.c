#ifdef X
void demo_x0() {
	{
		extern int *sensor_addr;
		extern int current;
		extern int minimum;
		extern int maximum;
		extern int first;

		current= *sensor_addr;
		if (first)
			minimum= maximum= current;
		if (minimum > current)
			minimum= current;
		if (maximum < current)
			maximum= current;
		first= 0;
	}
#if X >= 2
	{
		extern int *sensor2_addr;
		extern int current2;
		extern int minimum2;
		extern int maximum2;
		extern int first2;

		current2= *sensor2_addr;
		if (first2)
			minimum2= maximum2= current2;
		if (minimum2 > current2)
			minimum2= current2;
		if (maximum2 < current2)
			maximum2= current2;
		first2= 0;
	}
#endif
#if X >= 3
	{
		extern int *sensor3_addr;
		extern int current3;
		extern int minimum3;
		extern int maximum3;
		extern int first3;

		current3= *sensor3_addr;
		if (first3)
			minimum3= maximum3= current3;
		if (minimum3 > current3)
			minimum3= current3;
		if (maximum3 < current3)
			maximum3= current3;
		first3= 0;
	}
#endif
#if X >= 4
	{
		extern int *sensor4_addr;
		extern int current4;
		extern int minimum4;
		extern int maximum4;
		extern int first4;

		current4= *sensor4_addr;
		if (first4)
			minimum4= maximum4= current4;
		if (minimum4 > current4)
			minimum4= current4;
		if (maximum4 < current4)
			maximum4= current4;
		first4= 0;
	}
#endif
#if X >= 5
	{
		extern int *sensor5_addr;
		extern int current5;
		extern int minimum5;
		extern int maximum5;
		extern int first5;

		current5= *sensor5_addr;
		if (first5)
			minimum5= maximum5= current5;
		if (minimum5 > current5)
			minimum5= current5;
		if (maximum5 < current5)
			maximum5= current5;
		first5= 0;
	}
#endif
#if X >= 6
	{
		extern int *sensor6_addr;
		extern int current6;
		extern int minimum6;
		extern int maximum6;
		extern int first6;

		current6= *sensor6_addr;
		if (first6)
			minimum6= maximum6= current6;
		if (minimum6 > current6)
			minimum6= current6;
		if (maximum6 < current6)
			maximum6= current6;
		first6= 0;
	}
#endif
#if X >= 7
	{
		extern int *sensor7_addr;
		extern int current7;
		extern int minimum7;
		extern int maximum7;
		extern int first7;

		current7= *sensor7_addr;
		if (first7)
			minimum7= maximum7= current7;
		if (minimum7 > current7)
			minimum7= current7;
		if (maximum7 < current7)
			maximum7= current7;
		first7= 0;
	}
#endif
#if X >= 8
	{
		extern int *sensor8_addr;
		extern int current8;
		extern int minimum8;
		extern int maximum8;
		extern int first8;

		current8= *sensor8_addr;
		if (first8)
			minimum8= maximum8= current8;
		if (minimum8 > current8)
			minimum8= current8;
		if (maximum8 < current8)
			maximum8= current8;
		first8= 0;
	}
#endif
#if X >= 9
	{
		extern int *sensor9_addr;
		extern int current9;
		extern int minimum9;
		extern int maximum9;
		extern int first9;

		current9= *sensor9_addr;
		if (first9)
			minimum9= maximum9= current9;
		if (minimum9 > current9)
			minimum9= current9;
		if (maximum9 < current9)
			maximum9= current9;
		first9= 0;
	}
#endif
}
#endif
