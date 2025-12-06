#include <stdio.h>
#include <magic.h>
#define MAGIC_NUM 42

extern const char msg[];

int main(void)
{
    printf("%s\n", msg);
    printf("Magic number is %d\n", MAGIC_NUM);

    return 0;
}