#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main() {
    int pipefd[2];
    pid_t pid;
    char buf[1024];

    // 创建管道
    if (pipe(pipefd) == -1) {
        perror("pipe");
        return 1;
    }

    // 创建子进程
    pid = fork();
    if (pid == -1) {
        perror("fork");
        return 1;
    }

    if (pid == 0) {
        // 子进程
        close(pipefd[0]); // 关闭读端
        char message[] = "Hello from child process!";
        write(pipefd[1], message, strlen(message)); // 向管道写入消息
        close(pipefd[1]); // 写完后关闭写端
    } else {
        // 父进程
        close(pipefd[1]); // 关闭写端
        read(pipefd[0], buf, sizeof(buf)); // 从管道读消息
        printf("Received message: %s\n", buf);
        close(pipefd[0]); // 读完后关闭读端
    }

    return 0;
}