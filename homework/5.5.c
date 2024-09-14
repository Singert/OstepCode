# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>
# include <fcntl.h>
# include <sys/wait.h>
# include <sys/stat.h>
# include <sys/types.h>

int main(int argc, char *argv[])
{
    printf("init pid: %d\n",(int)getpid());
    int rc = fork();
    
    if (rc < 0)
    {
        fprintf(stderr,"fork failed\n");
        exit(1);
    }
    else if (rc == 0)
    {   
        int wc = wait(NULL);
        printf("wc = %d,child pid = %d\n",wc,(int)getpid());
        int i = i + 1;
    }
    else
    {
        int wc = wait(NULL);
        printf("wc = %d,parent pid = %d\n",wc,(int)getpid());
    }   

    return 0;
}