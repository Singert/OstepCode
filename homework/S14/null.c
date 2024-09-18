# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>

int main(int argc, char *argv[])
{
    int * null = (int*)malloc(sizeof(int));
    int * array =(int*)malloc(100* sizeof(int));
    array[100] = 0;
    printf("array[100]=%d\n",array[100]);
    // free(null);


    return 0;
}