#include<pthread.h>
#include<stdio.h>
#include <unistd.h>

void *cp(void *arg)
{
    printf("child : %d",getpid());
    return NULL;
}

int main()
{
    printf("parent : %d",getpid());
    pthread_t p,p1,p2;
    pthread_create(&p,NULL,cp,NULL);
    pthread_create(&p2,NULL,cp,NULL);
    pthread_create(&p1,NULL,cp,NULL);
    pthread_join(p1, NULL);
    pthread_join(p, NULL);
    pthread_join(p2, NULL);
    return 0;
}