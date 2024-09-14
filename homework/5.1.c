# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <fcntl.h>
# include <sys/wait.h>

int globla_val = 0;

int main(int argc, char *argv[])
{
    printf("init value = %d",globla_val);
    printf("current pid= %d\n",(int)getpid());

    int rc = fork();
    if (rc < 0)
    {
        fprintf(stderr,"fork failed");
        exit(1);
    }
    else if(rc == 0)
    {
        globla_val = 11;
        printf("child value = %d",globla_val);
        printf("child pid= %d\n",(int)getpid());

    }
    else 
    {
        printf("parent value = %d",globla_val);
        printf("parent pid= %d\n",(int)getpid());
    }
    return 0;
}