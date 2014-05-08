#ifndef demo_h
#define demo_h

extern int sensor1;
extern int sensor2;
extern int sensor3;

class meassurement {
	bool first;
	int minimum;
	int maximum;
	int current;
public:
	meassurement();
	void update_current(const int *sensor_addr);
	void reset_minimum();
	void reset_maximum();
	int get_current() const;
	int get_minimum() const;
	int get_maximum() const;

	friend class avg_meassurement;
};

class avg_meassurement {
	meassurement m;
	int avg[10];
public:
	void update_current(const int *sensor_addr);
	void reset_minimum();
	void reset_maximum();
	int get_current() const;
	int get_minimum() const;
	int get_maximum() const;
};

extern meassurement m;
extern meassurement m2;
extern avg_meassurement m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

#endif
