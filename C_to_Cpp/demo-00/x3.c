struct s {
	int current;
	int minimum;
	int maximum;
	int first;
	int *sensor_addr;
};

#ifndef V
void x3_internal(struct s *p) {
	p->current= *(p->sensor_addr);
	if (p->first)
		p->minimum= p->maximum= *(p->sensor_addr);
	if (p->minimum > *(p->sensor_addr))
		p->minimum= *(p->sensor_addr);
	if (p->maximum < *(p->sensor_addr))
		p->maximum= *(p->sensor_addr);
	p->first= 0;
}
#elif V == 1
void x3_internal(struct s *p) {
	p->current= *(p->sensor_addr);
	if (p->first)
		p->minimum= p->maximum= *(p->sensor_addr);
	else if (p->minimum > *(p->sensor_addr))
		p->minimum= *(p->sensor_addr);
	if (p->maximum < *(p->sensor_addr))
		p->maximum= *(p->sensor_addr);
	p->first= 0;
}
#elif V == 2
void x3_internal(struct s *p) {
	const int v= *(p->sensor_addr);
	p->current= v;
	if (p->first)
		p->minimum= p->maximum= v;
	else if (p->minimum > v)
		p->minimum= v;
	if (p->maximum < v)
		p->maximum= v;
	p->first= 0;
}
#elif V == 3
void x3_internal(struct s *p) {
	int v= *(p->sensor_addr);
	p->current= v;
	if (p->first)
		p->minimum= p->maximum= v;
	else if (p->minimum > v)
		p->minimum= v;
	if (p->maximum < v)
		p->maximum= v;
	p->first= 0;
}
#endif
	
#ifdef X
void demo_x3() {
	{
		extern int *sensor_addr;
		extern struct s data;

		x3_internal(&data);
	}
#if X >= 2
	{
		extern int *sensor2_addr;
		extern struct s data2;

		x3_internal(&data2);
	}
#endif
#if X >= 3
	{
		extern int *sensor3_addr;
		extern struct s data3;

		x3_internal(&data3);
	}
#endif
#if X >= 4
	{
		extern int *sensor4_addr;
		extern struct s data4;

		x3_internal(&data4);
	}
#endif
#if X >= 5
	{
		extern int *sensor5_addr;
		extern struct s data5;

		x3_internal(&data5);
	}
#endif
#if X >= 6
	{
		extern int *sensor6_addr;
		extern struct s data6;

		x3_internal(&data6);
	}
#endif
#if X >= 7
	{
		extern int *sensor7_addr;
		extern struct s data7;

		x3_internal(&data7);
	}
#endif
#if X >= 8
	{
		extern int *sensor8_addr;
		extern struct s data8;

		x3_internal(&data8);
	}
#endif
#if X >= 9
	{
		extern int *sensor9_addr;
		extern struct s data9;

		x3_internal(&data9);
	}
#endif
}
#endif
