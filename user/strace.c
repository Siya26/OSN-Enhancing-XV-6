#include "kernel/param.h"
#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"

int main(int argc, char *argv[])
{
    char *crr[MAXARG];
    if (trace(atoi(argv[1])) < 0)
    {
        fprintf(2, "%s: trace failed\n", argv[0]);
        exit(1);
    }
    
    char c = argv[1][0];
    if (c < '0' || c > '9' || argc < 3)
    {
        fprintf(2, "Usage: %s mask command\n", argv[0]);
        exit(1);
    }

    for (int j = 0; j < (MAXARG - 2) && j < (argc - 2); j++)
        crr[j] = argv[j + 2];

    exec(crr[0], crr);
    exit(0);
}