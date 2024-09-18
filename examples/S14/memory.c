# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>

int main(int argc,char *argv[])
{
    double *d = (double *)malloc(sizeof(double));
    free(d);

    return 0;
}
