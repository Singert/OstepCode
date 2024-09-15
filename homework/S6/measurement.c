// S6作业之测量cpu执行上下文切换时间；
//半成品
#include <bits/types/idtype_t.h>
# define _GNU_SOURCE

# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>
# include <sched.h>
# include <sys/types.h>
# include <sys/stat.h>
# include <sys/wait.h>
# include <fcntl.h>

int main(int argc, char *argv[])
{
    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(0,&mask);
    if (sched_setaffinity(getpid(), sizeof(mask), &mask) == -1)
    {
        fprintf(stderr, "sched_setaffinity");
    }

    else 
    {
        int pipefd[2];
        pid_t pid;
        pid = fork();
        if (pipe(pipefd) < 0 )    
        {
            fprintf(stderr,"pipe failed");
            exit(0);
        }   
        else 
        {
            // while(1)
            // {
                if(pid < 0)
                {
                    fprintf(stderr,"fork failed");
                    exit(1);
                }
                else if(pid == 0)
                {
                    close(pipefd[0]);
                    if(write(pipefd[1],NULL,NULL) < 0)
                    {
                        fprintf(stderr,"fork failed");
                        exit(1);  
                    }
                    else 
                    {
                        printf("NULL pass success\n");
                    }
                    close(pipefd[1]);
                }
                else
                {
                    wait(NULL);
                    close(pipefd[1]);
                    if (read(pipefd[0],NULL,NULL) < 0)
                    {
                        fprintf(stderr,"fork failed");
                        exit(1);
                    }
                    else 
                    {
                        printf("NULL receive successs\n");
                    }
                    close(pipefd[0]);
                // }
            }
        }
    }

    return 0;
}

