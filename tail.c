#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"
#include <stddef.h>

char buf1[1024];

int main(int argc, char const *argv[])
{

    if(argc < 2){
        printf(2,"Error:tail files.....");
    }
    for (int i = 1; i < argc; i++)
    {
        int n, baris = 0;
        int file;

        if ((file = open(argv[i], 0)) < 0)
        {
            printf(2,"Error:File cant open\n");
        }
        char *isiFIle;
        isiFIle = (char *)malloc(1024 * sizeof(char));
        int bytesize = 0;
        while ((n = read(file, buf1, sizeof(buf1))) > 0)
        {
            for (size_t z = 0; z < n; z++)
            {
                isiFIle[bytesize] = (char)buf1[z];
                bytesize++;
            }   
        }

        if(n < 0){
            printf(2,"Tail:Read error\n");
        }
        int temp = 0;
        while (temp <= bytesize)
        {
            if(isiFIle[temp] == '\n'){
                baris++;
            }
            temp++;
        }
        
        if(baris < 10){
            printf(1,"%s",isiFIle);
        }
        else
        {
            int printBaris = baris - 10;
            int bariske = 0;
            for (int  j = 0; j < bytesize; j++)
            {
                if (bariske >= printBaris)
                {
                    printf(1,"%c",isiFIle[j]);
                }
                else if(isiFIle[j] == '\n'){
                    bariske++;
                }
            }
            
        }
        

        close(file);
    }
    exit();
}