struct s {
	int current;
	int minimum;
	int maximum;
};

void x6_internal(struct s *p, int v) {
	if (p->minimum <= v && v <= p->maximum) {
		p->current= v;
	}
}
	
#ifdef X
void demo_x6() {
	{
		extern int *sensor_addr;
		extern struct s data;

		x6_internal(&data, *sensor_addr);
	}
#if X >= 2
	{
		extern int *sensor2_addr;
		extern struct s data2;

		x6_internal(&data2, *sensor2_addr);
	}
#endif
#if X >= 3
	{
		extern int *sensor3_addr;
		extern struct s data3;

		x6_internal(&data3, *sensor3_addr);
	}
#endif
#if X >= 4
	{
		extern int *sensor4_addr;
		extern struct s data4;

		x6_internal(&data4, *sensor4_addr);
	}
#endif
#if X >= 5
	{
		extern int *sensor5_addr;
		extern struct s data5;

		x6_internal(&data5, *sensor5_addr);
	}
#endif
#if X >= 6
	{
		extern int *sensor6_addr;
		extern struct s data6;

		x6_internal(&data6, *sensor6_addr);
	}
#endif
#if X >= 7
	{
		extern int *sensor7_addr;
		extern struct s data7;

		x6_internal(&data7, *sensor7_addr);
	}
#endif
#if X >= 8
	{
		extern int *sensor8_addr;
		extern struct s data8;

		x6_internal(&data8, *sensor8_addr);
	}
#endif
#if X >= 9
	{
		extern int *sensor9_addr;
		extern struct s data9;

		x6_internal(&data9, *sensor9_addr);
	}
#endif
}
#endif
