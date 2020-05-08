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

// #include "types.h"
// #include "stat.h"
// #include "user.h"
// #include "fcntl.h"

// char buf[1000000];

// int main(int argc, char *argv[])
// {
//     int fd, i, j, n, lines = 0, toPrint, c = 0, startLine;
//     if (argc <= 1)
//     {
//         printf(1, "tail: need at least 1 argument!");
//         exit();
//     }
//     for (j = 1; j < argc; j++)
//     {
//         lines = 0, toPrint = 0, c = 0, startLine = 0;
//         if ((fd = open(argv[j], O_RDWR)) < 0)
//         {
//             printf(1, "tail: cannot open %s for reading\n", argv[j]);
//             exit();
//         }
//         printf(1, "==> %s <==\n", argv[j]);
//         char *buffer;
//         buffer = (char *)malloc(1000000 * sizeof(char));
//         int buffSize = 0;
//         while ((n = read(fd, buf, sizeof(buf))) > 0)
//         {
//             for (i = 0; i < n; i++)
//             {
//                 buffer[buffSize] = (char)buf[i];
//                 buffSize++;
//                 if (buf[i] == '\n')
//                     lines++;
//             }
//         }
//         if (n < 0)
//         {
//             printf(1, "tail: read error\n");
//             exit();
//         }
//         if (lines < 10)
//             toPrint = lines + 1;
//         else
//             toPrint = 10;
//         startLine = lines - toPrint + 1;
//         for (i = 0; i < buffSize; i++)
//         {
//             if (c >= startLine)
//                 printf(1, "%c", buffer[i]);
//             if (buffer[i] == '\n')
//                 c++;
//         }
//         printf(1, "\n");
//         if (j != argc - 1)
//             printf(1, "\n");
//     }
//     exit();
// }