# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>
# include <fcntl.h>
# include <sys/wait.h>
# include <sys/stat.h>
# include <sys/types.h>

# define BUFFER_SIZE 1024

int main(int argc, char *argv[])
{
    int rc = fork();
    if (rc < 0)
    {
        fprintf(stderr,"fork error");
        exit(1);
    }
    else if(rc == 0)
    {
        printf("hello\n");
    }
    else 
    {
        sleep(1);
        printf("good bye\n");
    }
    return 0; 
}