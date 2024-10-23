#include<stdio.h>
#include<pthread.h>
#include <unistd.h>

volatile int done = 0;

void *child(void *arg)
{
    printf("child %d \n",getpid());
    done = 1;
    return NULL;
}


int main(int argc, char*argv[])
{
    pthread_t c;
    printf("now try to create child \n");
    pthread_create(&c,NULL,child,NULL);
    while(done == 0)
    {
        //spin;
    }
    printf("parent:end\n");

    return 0;
}