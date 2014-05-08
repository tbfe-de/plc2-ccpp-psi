#include "listing_c.4.cpp"	// MW

namespace messaging
{
    class receiver
    {
        queue q;
    public:
        operator sender()	// MW
        {
            return sender(&q);
        }
        dispatcher wait()
        {
            return dispatcher(&q);
        }
    };
}
