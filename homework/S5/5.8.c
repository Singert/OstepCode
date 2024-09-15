# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>
# include <string.h>
# include <fcntl.h>
# include <sys/wait.h>
# include <sys/stat.h>
# include <sys/types.h>

int main(int argc, char * argv[])
{
    int pipefd[2];
    pid_t pid;
    char buf[1024];
    int rc;
    printf("testo\n");
    if (pipe(pipefd) == -1)
    {
        fprintf(stderr,"pipe failed\n");
        exit(1);
    }
    printf("test1\n");
    
    rc = fork();
    if (rc < 0)
    {
        fprintf(stderr,"fork error");
        exit(1);
    }
    

    else if(rc == 0)
    {   
        printf("test2\n");
        close(pipefd[0]);
        char message[] = "hello from child";
        write(pipefd[1],message,strlen(message));
        close(pipefd[1]);
    }
    else {
        printf("test3\n");
        close(pipefd[1]);
        read(pipefd[0],buf,sizeof(buf));
        printf("Received message :%s\n",buf);
        close(pipefd[0]);
    
    }
    return 0;
}