// S6作业之测量cpu执行上下文切换时间；
//成品
// 多关闭了一次读端和写端导致不成功，已纠错
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
        if(pid < 0)
        {
            fprintf(stderr,"fork failed\n");
            exit(1);
        }else{printf("test\n");}
        if (pipe(pipefd) < 0 )    
        {
            fprintf(stderr,"pipe failed\n");
            exit(0);
        }   
        else 
        {
            int cnt = 0;
            while(cnt < 100000)
            {
                cnt++;
                printf("cnt=%d",cnt);

                if(pid == 0)
                {
                    close(pipefd[0]);
                    if(write(pipefd[1],NULL,NULL) < 0)
                    {
                        fprintf(stderr,"fork failed\n");
                        exit(1);  
                    }
                    else 
                    {
                        printf("NULL pass success\n");
                    }
                }
                else
                {
                    wait(NULL);
                    close(pipefd[1]);
                    if (read(pipefd[0],NULL,NULL) < 0)
                    {
                        fprintf(stderr,"fork failed\n");
                        exit(1);
                    }
                    else 
                    {
                        printf("NULL receive successs\n");
                    }
                }
            }
        }
    }

    return 0;
}

