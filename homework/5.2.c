# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <fcntl.h>
# include <sys/wait.h>
#include <sys/types.h>
#include <sys/stat.h>

#define BUFFER_SIZE 32

int main(int argc, char *argv[])
{
    int fd;
    ssize_t bytes_read;
    char buffer[BUFFER_SIZE*2];
    char *filename;
    if (argc != 2)
    {
        fprintf(stderr,"argument error\n");
        exit(1);
    }
    else 
    {
        filename = argv[1];
        fd = open(filename,O_RDONLY);
        if (fd == -1)
        {
            perror("error opening file\n");
            exit(EXIT_FAILURE);
        }
        else 
        {
            int rc = fork();
            if (rc < 0)
            {
                fprintf(stderr,"Fork error");
                exit(1);
            }
            else if(rc == 0)
            {   
                buffer[0]='\n';
                buffer[1]='1';
                printf("child [print]: \n");
                while ((bytes_read=read(fd,buffer+2,BUFFER_SIZE))>0)
                {
                    write(STDOUT_FILENO,buffer,bytes_read+2);
                    //printf("\n=============================\n");
                }
                if (bytes_read == -1)
                {
                    perror("child error reading file\n");
                    // close(fd);
                    exit(EXIT_FAILURE);
                }
            }
            else 
            {
                buffer[0]='\n';
                buffer[1]='2';
                printf("parent [print]: \n");
                while ((bytes_read=read(fd,buffer+2,BUFFER_SIZE))>0)
                {
                    //sleep(1);
                    write(STDOUT_FILENO,buffer,bytes_read+2);
                    //printf("\n=============================\n");
                }
                if (bytes_read == -1)
                {
                    perror("parent error reading file\n");
                    // close(fd);
                    exit(EXIT_FAILURE);
            }
            }   
        }
    }

    return 0;
}