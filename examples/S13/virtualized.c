# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>

int main(int argc, char* argv[])
{
    printf("the location of code :%p\n",(void *)main);
    printf("the location of heap %p\n",(void *)malloc(1));
    int x = 3;
    malloc(sizeof(int));
    printf("location of stack %p\n",(void *) &x);
    return 0;
}
