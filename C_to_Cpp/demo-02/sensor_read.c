void sensor_read() {
	static int first= 1;

	/* update current value and minimum/maximum from sensor */
	{
		extern int *sensor_addr;
		extern int current;
		extern int minimum;
		extern int maximum;

		current= *sensor_addr;
		if (first)
			minimum= maximum= current;
		if (minimum > current)
			minimum= current;
		if (maximum < current)
			maximum= current;
	}

	/* update current2 value and minimum2/maximum2 from sensor */
	{
		extern int *sensor2_addr;
		extern int current2;
		extern int minimum2;
		extern int maximum2;

		current2= *sensor2_addr;
		if (first)
			minimum2= maximum2= current2;
		if (minimum2 > current2)
			minimum2= current2;
		if (maximum2 < current2)
			maximum2= current2;
	}

	/* averaging update current2 value and minimum2/maximum2 from sensor */
	{
		extern int *sensor3_addr;
		extern int current3;
		extern int minimum3;
		extern int maximum3;
		static int avg[10];
		const static int N= (sizeof avg / sizeof avg[0]);
		int i;

		int v= *sensor3_addr;
		if (first) {
			for (i= 0; i < N; ++i)
				avg[i]= v;
		}
		for (i= 1; i < N; ++i)
			avg[i-1]= avg[i];
		avg[N-1]= v;
		v= 0;
		for (i= 0; i < N; ++i)
			v+= avg[i];
		current3=  v/N;
		if (first)
			minimum3= maximum3= current3;
		if (minimum3 > current3)
			minimum3= current3;
		if (maximum3 < current3)
			maximum3= current3;
	}

	first= 0;

}
