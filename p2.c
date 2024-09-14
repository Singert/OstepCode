# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <sys/wait.h>

int global_val = 0;

int main(int argc, char *argv[])
{
    printf("hello world(pid %d)\n",(int)getpid());
    printf("start global_val = %d address = %lu\n",global_val,&global_val);
    int rc = fork();
    if (rc < 0)
    {
        fprintf(stderr, "fork failed\n");
        exit(1);
    }
    else if( rc == 0)
    {
        global_val = 10;
        printf("child global_val = %d address = %lu\n ",global_val,&global_val);
        printf("hello, I am a child(pid: %d)\n",(int)getpid());
    }
    else 
    {
        sleep(1);
        // global_val = 999;
        printf("parent global_val = %d address = %lu\n",global_val,&global_val);
        int wc = wait(NULL);
        printf("I am a parent of %d(wc: %d)(pid:%d)\n",rc,wc,(int)getpid());
    }
    return 0;
}
