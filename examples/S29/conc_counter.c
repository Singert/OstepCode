# include <stdio.h>
# include <pthread.h>
# include <stdlib.h>

typedef struct counter_t
{
    int val;
    pthread_mutex_t lock;
} counter_t;

void init(counter_t *c)
{
    c->val = 0;
    pthread_mutex_init(&c->lock,NULL);
}

void increment(counter_t *c)
{
    pthread_mutex_lock(&c->lock);
    c->val++;
    pthread_mutex_unlock(&c->lock);
}

void decrement(counter_t *c)
{
    pthread_mutex_lock(&c->lock);
    c->val--;
    pthread_mutex_unlock(&c->lock);
}

void get(counter_t *c)
{   
    int cur_val;
    pthread_mutex_lock(&c->lock);
    cur_val = c->val;
    pthread_mutex_unlock(&c->lock);
    printf("current val %d /n",cur_val);
}

void *update(void *arg)
{  
    counter_t *c = (counter_t *) arg;
    int t = 0;
    while(t < 100000)
    {
        increment(c);
        t++;
    }
    get(c);
    return NULL;
}

int main(int argc, char*argv[])
{
    int pnum;
    counter_t *mc = (counter_t *)malloc(sizeof(counter_t));
    init(mc);
    pthread_t p0,p1,p2,p3;
    pthread_create(&p1,NULL,update,mc);
    // pthread_create(&p2,NULL,update,mc);
    // pthread_create(&p3,NULL,update,mc);
    // pthread_create(&p0,NULL,update,mc);
    pthread_join(p1,NULL);
    // pthread_join(p2,NULL);
    // pthread_join(p3,NULL);
    // pthread_join(p0,NULL);
    return 0;
}
