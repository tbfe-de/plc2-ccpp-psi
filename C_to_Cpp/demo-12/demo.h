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

inline
meassurement::meassurement()
	: first(true)
{}

inline
void meassurement::reset_minimum() {
	minimum= current;
}

inline
void meassurement::reset_maximum() {
	maximum= current;
}

inline
int meassurement::get_current() const {
	return current;
}

inline
int meassurement::get_minimum() const {
	return minimum;
}

inline
int meassurement::get_maximum() const {
	return maximum;
}

inline
void avg_meassurement::reset_minimum() {
	m.reset_minimum();
}

inline
void avg_meassurement::reset_maximum() {
	m.reset_maximum();
}

inline
int avg_meassurement::get_current() const {
	return m.get_current();
}

inline
int avg_meassurement::get_minimum() const {
	return m.get_minimum();
}

inline
int avg_meassurement::get_maximum() const {
	return m.get_maximum();
}

extern meassurement m;
extern meassurement m2;
extern avg_meassurement m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

#endif
