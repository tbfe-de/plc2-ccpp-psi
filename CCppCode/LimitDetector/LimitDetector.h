#ifndef LIMIT_DETECTOR_H
#define LIMIT_DETECTOR_H

#include <string>

class LimitDetector {
	const std::string name;
	virtual void react_on(int val) = 0;
protected:
	int oldvalue;
	bool state;
	LimitDetector(const std::string &n)
		: name(n), oldvalue(0), state(false)
	{
#ifdef SELF_REGISTERING
		all[count++] = this;
#endif
	}
public:
	void set(int value) {
		react_on(value);
		oldvalue = value;
	}
	operator bool() const {
		return state;
	}
	void action(bool);


#ifdef SELF_REGISTERING
private:
	static LimitDetector *all[100];
	static int count;
public:
	static void set_all(int value);
#endif

};

class RaisesOver : public LimitDetector {
	const int limit;
public:
	RaisesOver(const std::string &n, int lim)
		: LimitDetector(n), limit(lim) {}
	virtual void react_on(int value) {
		if (state != (value > limit))
			action(value > limit);
	}
};

class FallsUnder : public LimitDetector {
	const int limit;
public:
	FallsUnder(const std::string&n, int lim)
		: LimitDetector(n), limit(lim) {}
	virtual void react_on(int value) {
		if (state != (value < limit))
			action(value < limit);
	}
};

class RaisesOverPulse : public LimitDetector {
	const int limit;
public:
	RaisesOverPulse(const std::string&n, int lim)
		: LimitDetector(n), limit(lim) {}
	virtual void react_on(int value) {
		if (oldvalue < limit && value >= limit) {
			action(true);
			action(false);
		}
	}
};

class FallsUnderPulse : public LimitDetector {
	const int limit;
public:
	FallsUnderPulse(const std::string&n, int lim)
		: LimitDetector(n), limit(lim) {}
	virtual void react_on(int value) {
		if (oldvalue > limit && value <= limit) {
			action(true);
			action(false);
		}
	}
};

class IsWithinRange : public LimitDetector {
	const int low, high;
public:
	IsWithinRange(const std::string&n, int lo, int hi)
		: LimitDetector(n), low(lo), high(hi) {}
	virtual void react_on(int value) {
		const bool value_in_limits = (low <= value && value <= high);
		if (state != value_in_limits)
			action(value_in_limits);
	}
};

class IsOutOfRange : public LimitDetector {
	const int low, high;
public:
	IsOutOfRange(const std::string &n, int lo, int hi)
		: LimitDetector(n), low(lo), high(hi) {}
	virtual void react_on(int value) {
		const bool value_in_limits = (low <= value && value <= high);
		if (state != !value_in_limits)
			action(!value_in_limits);
	}
};

class NeedsManualReset : public LimitDetector {
public:
	NeedsManualReset(const std::string &n)
		: LimitDetector(n)
	{}
	void reset() {
		state = false;
	}
};

class WasOnceUnder : public NeedsManualReset {
	const int limit;
public:
	WasOnceUnder(const std::string &n, int lim)
		: NeedsManualReset(n), limit(lim) {}
	virtual void react_on(int value) {
		if (state == false && value < limit)
			action(true);
	}
};

class WasOnceOver : public NeedsManualReset {
	const int limit;
public:
	WasOnceOver(const std::string &n, int lim)
		: NeedsManualReset(n), limit(lim) {}
	virtual void react_on(int value) {
		if (state == false && value > limit)
			action(true);
	}
};

#endif
