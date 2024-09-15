# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>
# include <fcntl.h>
# include <sys/stat.h>
# include <sys/wait.h>
# include <sys/types.h>

int main(int argc, char *argv[])
{
    pid_t rc = fork();
    if (rc < 0)
    {
        fprintf(stderr, "fork failed");
        exit(1);
    }
    else if(rc == 0)
    {   
        printf("test0\n");
        close(STDOUT_FILENO);
        int fd;
        fd = open("./test.output",O_CREAT | O_WRONLY | O_TRUNC,S_IRWXU,O_RDONLY,O_WRONLY);
        printf("test1\n");
    }
    else
    {
        wait(NULL);
        printf("test3\n");
    }
    return 0;
}