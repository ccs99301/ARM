#include <stdio.h>
#include <stdlib.h>

extern char trans(char)

int main()
{
    char c;
    FILE *fpin=fopen("input.txt","r"),*fpout=("output.txt","w");
    while((c=fgetc(fpin))!=EOF)
    {
        if(c>='a'&&c<='z')
            trans(c);
        fprintf(fpout,"%c",c);
    }
    return 0;
}
