#ifndef demo_h
#define demo_h

extern int sensor1;
extern int sensor2;
extern int sensor3;

class meassurement {
	bool first;
	int minimum;
	int maximum;
protected:
	int current;
	bool is_first() const;
public:
	meassurement();
	virtual void update_current(const int *sensor_addr);
	void reset_minimum();
	void reset_maximum();
	int get_current() const;
	int get_minimum() const;
	int get_maximum() const;
};

class avg_meassurement : public meassurement {
	int avg[10];
public:
	void update_current(const int *sensor_addr);
};

inline
meassurement::meassurement()
	: first(true)
{}

inline
bool meassurement::is_first() const {
	return first;
}

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

extern meassurement m;
extern meassurement m2;
extern avg_meassurement m3;

extern struct m_config {
	meassurement *m;
	int *sensor_addr;
} all[];
extern int m_config_size;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

#endif
