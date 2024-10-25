#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<pthread.h>

int done = 0;
pthread_mutex_t m = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t c = PTHREAD_COND_INITIALIZER;

void thr_exit()
{
    pthread_mutex_lock(&m);
    done = 1;
    pthread_cond_signal(&c);//在发信号时持有锁是最简单有效的办法。
    pthread_mutex_unlock(&m);
}

void *child(void *arg)
{   
    printf("child: %d",getpid());
    thr_exit();
    return NULL;
}

void thr_join(){
    pthread_mutex_lock(&m);
    while(done == 0)
    {
        pthread_cond_wait(&c,&m); 
        // 释放锁，并使调用线程休眠，当线程被唤醒时，wait()重新获取锁，返回给调用线程，避免线程休眠时出现竞态条件
    }
    pthread_mutex_unlock(&m);
}


int main(int argc,char*argv[])
{
    printf("parent %d begin:",getpid());
    pthread_t p;
    pthread_create(&p, NULL, child, NULL);
    thr_join();
    printf("parent done\n");
    return 0;
}