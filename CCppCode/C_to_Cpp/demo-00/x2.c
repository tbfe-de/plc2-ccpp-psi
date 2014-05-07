struct s {
	int current;
	int minimum;
	int maximum;
	int first;
};

void x2_internal(struct s *p, int v) {
	p->current= v;
	if (p->first)
		p->minimum= p->maximum= v;
	if (p->minimum > v)
		p->minimum= v;
	if (p->maximum < v)
		p->maximum= v;
	p->first= 0;
}
	
#ifdef X
void demo_x2() {
	{
		extern int *sensor_addr;
		extern struct s data;

		x2_internal(&data, *sensor_addr);
	}
#if X >= 2
	{
		extern int *sensor2_addr;
		extern struct s data2;

		x2_internal(&data2, *sensor2_addr);
	}
#endif
#if X >= 3
	{
		extern int *sensor3_addr;
		extern struct s data3;

		x2_internal(&data3, *sensor3_addr);
	}
#endif
#if X >= 4
	{
		extern int *sensor4_addr;
		extern struct s data4;

		x2_internal(&data4, *sensor4_addr);
	}
#endif
#if X >= 5
	{
		extern int *sensor5_addr;
		extern struct s data5;

		x2_internal(&data5, *sensor5_addr);
	}
#endif
#if X >= 6
	{
		extern int *sensor6_addr;
		extern struct s data6;

		x2_internal(&data6, *sensor6_addr);
	}
#endif
#if X >= 7
	{
		extern int *sensor7_addr;
		extern struct s data7;

		x2_internal(&data7, *sensor7_addr);
	}
#endif
#if X >= 8
	{
		extern int *sensor8_addr;
		extern struct s data8;

		x2_internal(&data8, *sensor8_addr);
	}
#endif
#if X >= 9
	{
		extern int *sensor9_addr;
		extern struct s data9;

		x2_internal(&data9, *sensor9_addr);
	}
#endif
}
#endif
