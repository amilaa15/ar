#include <stdio.h>


int[] niz={1, 19, 350, 740, 1522};

int main(int argc, char const *argv[])
{
    int min=niz[0];
    for(int i=0; i<5; ++i)
    {
        for(int j=i; j<5; ++j)
        {
            if(niz[j]<min)
            {
                min=niz[j];
            }
        }
    }
    return 0
}

// 60, 75, 43