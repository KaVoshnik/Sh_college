#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    pid_t current_pid = getpid();
    printf("PID current process: %d\n", current_pid);

    pid_t parent_pid = getppid();
    printf("PID parent process: %d\n", parent_pid);

    sleep(1);

    pid_t child_pid = fork();

    if (child_pid == 0) {
        printf("Into new process:\n");
        printf("PID new process: %d\n", getpid());
        printf("PID parent process: %d\n", getppid());
        exit(0); 
        } else if (child_pid > 0) {
        wait(NULL);
        printf("New process is end.\n");

        printf("Process hierarchy (ps -ax):\n");
        system("ps -ax");
    } else {
        perror("fork");
        return 1;
    }

    printf("Process hierarchy (pstree):\n");
    system("pstree");

    return 0;
}

