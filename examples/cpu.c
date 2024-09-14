# include <stdio.h>
# include <stdlib.h>
# include <sys/time.h>
# include <assert.h>
# include "../include/common.h"

int main(int argc, char *argv[])
{
    
    if (argc != 2)
    {
        fprintf(stderr, "usage: cpu<string>\n");
        printf("test1");
        exit(1);
    }
    printf("test2");
    char *str = argv[1];
    
    printf("test3");

    while(1)
    {
        printf("test4");
        
        printf("%s/n",str);
        Spin(1);
    }
    
    return 0;
}
