# include<stdio.h>
# include<stdlib.h>
# include<assert.h>
# include<pthread.h>
# include<unistd.h>

// 有界缓冲区问题 OR 生产者、消费者（producer/consumer)问题

int buffer;
int count = 0;
pthread_cond_t empty,fill;
pthread_mutex_t mutex;


void put(int value)
{
    assert(count == 0);
    count = 1;
    buffer = value;
}

void get()
{
    assert(count == 1);
    printf(" I got %d",count);
    count = 0;
}

void *producer(void *arg)
{
    int i;
    int loops = 20;
    for (int i = 0;i<loops;i++)
    {
        pthread_mutex_lock(&mutex);
        while(count == 1)
        {
            pthread_cond_wait(&empty,&mutex);
        }
        put(i);
        pthread_mutex_unlock(&mutex);
    }
}

void *comsumer(void *arg)
{
    int i;
    int loops = 20;
    for (int i = 0; i< loops; i++)
    {
        pthread_mutex_lock(&mutex);
        while(count == 0)
        {
            pthread_cond_wait(&fill, &mutex);
        }
        get();
        pthread_mutex_unlock(&mutex);
    }
}


