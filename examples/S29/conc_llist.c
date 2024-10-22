# include <stdio.h>
# include <stdlib.h>
# include <pthread.h>

typedef struct node_t 
{
    int val;
    struct node_t* next;
}node_t;

typedef struct list_t
{
    node_t *head;
    pthread_mutex_t lock;
}list_t;

void List_init(list_t*l)
{
    l->head =NULL;
    pthread_mutex_init(&l->lock);
}



int main(int argc,char*argv[])
{


    return 0;
}