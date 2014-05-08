#ifndef demo_h
#define demo_h

extern int sensor1;
extern int sensor2;
extern int sensor3;

class meassurement {
	bool first;
	const volatile int *sensor_addr;
	int minimum;
	int maximum;
	int current;
protected:
	virtual void prepare_first(int);
	virtual int calculate_current(int);
public:
	meassurement();
	void assign_sensor(const int *s);
	virtual void update_current();
	void reset_minimum();
	void reset_maximum();
	int get_current() const;
	int get_minimum() const;
	int get_maximum() const;
};

class avg_meassurement : public meassurement {
	static const int N= 10;
	int avg[N];
protected:
	virtual void prepare_first(int);
	virtual int calculate_current(int);
};

inline
meassurement::meassurement()
	: first(true)
{}

inline
void meassurement::assign_sensor(const int *s_addr) {
	sensor_addr= s_addr;
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

extern meassurement *const m_all[];
extern const int m_all_size;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

#endif
