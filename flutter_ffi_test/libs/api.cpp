#ifdef WIN32
#define EXPORT __declspec(dllexport)
#else
#define EXPORT extern "C" __attribute__((visibility("default"))) __attribute__((used))
#endif

#include <string>
#include <cctype>

static char buffer[1024];

EXPORT int add(int a, int b)
{
    return a + b;
}

EXPORT char *capitalize(char *str)
{
    std::strcpy(buffer, str);
    buffer[0] = std::toupper(buffer[0]);
    return buffer;
}