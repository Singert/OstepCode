#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<pthread.h>
#include<semaphore.h>
sem_t s;
void *child(void*arg)
{
    printf("child\n");
    sem_post(&s);
    return NULL;
}


int main(int argc, char*argv[])
{
    sem_init(&s, 0, 0);
    printf( "parent:begin\n");
    pthread_t p;
    pthread_create(&p, NULL, child, NULL);
    sem_wait(&s);
    printf("parent: end\n");        
    return 0;

}
