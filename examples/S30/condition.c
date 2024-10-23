# include<stdio.h>
# include<stdlib.h>
# include<pthread.h>
#include <unistd.h>

void *child(void *arg)
{
    printf("child %d \n",getpid());
    return NULL;
}

int main(int argc, char*argv[])
{
    printf("parent begin %d\n",getpid());

    pthread_t c;
    printf("now try to create child \n");
    pthread_create(&c,NULL,child,NULL);
    pthread_join(c,NULL);
    printf("parent:end\n");

    return 0;
}