
_tail:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include <stddef.h>

char buf1[1024];

int main(int argc, char const *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 01                	mov    (%ecx),%eax
  16:	8b 51 04             	mov    0x4(%ecx),%edx

    if(argc < 2){
  19:	83 f8 01             	cmp    $0x1,%eax
  1c:	0f 8e 6f 01 00 00    	jle    191 <main+0x191>
  22:	8d 7a 04             	lea    0x4(%edx),%edi
  25:	8d 04 82             	lea    (%edx,%eax,4),%eax
  28:	89 7d e0             	mov    %edi,-0x20(%ebp)
  2b:	89 45 d8             	mov    %eax,-0x28(%ebp)
  2e:	66 90                	xchg   %ax,%ax
    for (int i = 1; i < argc; i++)
    {
        int n, baris = 0;
        int file;

        if ((file = open(argv[i], 0)) < 0)
  30:	8b 45 e0             	mov    -0x20(%ebp),%eax
  33:	83 ec 08             	sub    $0x8,%esp
  36:	6a 00                	push   $0x0
  38:	ff 30                	pushl  (%eax)
  3a:	e8 83 04 00 00       	call   4c2 <open>
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	89 45 dc             	mov    %eax,-0x24(%ebp)
  47:	0f 88 2d 01 00 00    	js     17a <main+0x17a>
        {
            printf(2,"Error:File cant open\n");
        }
        char *isiFIle;
        isiFIle = (char *)malloc(1024 * sizeof(char));
  4d:	83 ec 0c             	sub    $0xc,%esp
        int bytesize = 0;
  50:	31 db                	xor    %ebx,%ebx
        isiFIle = (char *)malloc(1024 * sizeof(char));
  52:	68 00 04 00 00       	push   $0x400
  57:	e8 d4 07 00 00       	call   830 <malloc>
  5c:	8b 7d dc             	mov    -0x24(%ebp),%edi
  5f:	89 c6                	mov    %eax,%esi
        while ((n = read(file, buf1, sizeof(buf1))) > 0)
  61:	83 c4 10             	add    $0x10,%esp
  64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  68:	83 ec 04             	sub    $0x4,%esp
  6b:	68 00 04 00 00       	push   $0x400
  70:	68 a0 0c 00 00       	push   $0xca0
  75:	57                   	push   %edi
  76:	e8 1f 04 00 00       	call   49a <read>
  7b:	83 c4 10             	add    $0x10,%esp
  7e:	83 f8 00             	cmp    $0x0,%eax
  81:	7e 2d                	jle    b0 <main+0xb0>
  83:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
        {
            for (size_t z = 0; z < n; z++)
  86:	31 d2                	xor    %edx,%edx
  88:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
  8b:	90                   	nop
  8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            {
                isiFIle[bytesize] = (char)buf1[z];
  90:	0f b6 9a a0 0c 00 00 	movzbl 0xca0(%edx),%ebx
  97:	88 1c 11             	mov    %bl,(%ecx,%edx,1)
            for (size_t z = 0; z < n; z++)
  9a:	83 c2 01             	add    $0x1,%edx
  9d:	39 c2                	cmp    %eax,%edx
  9f:	75 ef                	jne    90 <main+0x90>
  a1:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  a4:	01 d3                	add    %edx,%ebx
  a6:	eb c0                	jmp    68 <main+0x68>
  a8:	90                   	nop
  a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
                bytesize++;
            }   
        }

        if(n < 0){
  b0:	0f 85 ad 00 00 00    	jne    163 <main+0x163>
  b6:	8d 4c 1e 01          	lea    0x1(%esi,%ebx,1),%ecx
        int n, baris = 0;
  ba:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
  bd:	89 f7                	mov    %esi,%edi
        int bytesize = 0;
  bf:	89 f0                	mov    %esi,%eax
        int n, baris = 0;
  c1:	31 d2                	xor    %edx,%edx
  c3:	89 cb                	mov    %ecx,%ebx
  c5:	8d 76 00             	lea    0x0(%esi),%esi
        }
        int temp = 0;
        while (temp <= bytesize)
        {
            if(isiFIle[temp] == '\n'){
                baris++;
  c8:	31 c9                	xor    %ecx,%ecx
  ca:	80 38 0a             	cmpb   $0xa,(%eax)
  cd:	0f 94 c1             	sete   %cl
  d0:	83 c0 01             	add    $0x1,%eax
  d3:	01 ca                	add    %ecx,%edx
        while (temp <= bytesize)
  d5:	39 c3                	cmp    %eax,%ebx
  d7:	75 ef                	jne    c8 <main+0xc8>
            }
            temp++;
        }
        
        if(baris < 10){
  d9:	83 fa 09             	cmp    $0x9,%edx
  dc:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  df:	7f 3f                	jg     120 <main+0x120>
            printf(1,"%s",isiFIle);
  e1:	83 ec 04             	sub    $0x4,%esp
  e4:	56                   	push   %esi
  e5:	68 65 09 00 00       	push   $0x965
  ea:	6a 01                	push   $0x1
  ec:	e8 df 04 00 00       	call   5d0 <printf>
  f1:	83 c4 10             	add    $0x10,%esp
            }
            
        }
        

        close(file);
  f4:	83 ec 0c             	sub    $0xc,%esp
  f7:	ff 75 dc             	pushl  -0x24(%ebp)
  fa:	e8 ab 03 00 00       	call   4aa <close>
  ff:	83 45 e0 04          	addl   $0x4,-0x20(%ebp)
    for (int i = 1; i < argc; i++)
 103:	83 c4 10             	add    $0x10,%esp
 106:	8b 45 e0             	mov    -0x20(%ebp),%eax
 109:	3b 45 d8             	cmp    -0x28(%ebp),%eax
 10c:	0f 85 1e ff ff ff    	jne    30 <main+0x30>
    }
    exit();
 112:	e8 6b 03 00 00       	call   482 <exit>
 117:	89 f6                	mov    %esi,%esi
 119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
            int printBaris = baris - 10;
 120:	83 ea 0a             	sub    $0xa,%edx
            for (int  j = 0; j < bytesize; j++)
 123:	85 db                	test   %ebx,%ebx
 125:	74 cd                	je     f4 <main+0xf4>
 127:	01 f3                	add    %esi,%ebx
            int bariske = 0;
 129:	31 f6                	xor    %esi,%esi
 12b:	eb 14                	jmp    141 <main+0x141>
 12d:	8d 76 00             	lea    0x0(%esi),%esi
                    bariske++;
 130:	3c 0a                	cmp    $0xa,%al
 132:	0f 94 c0             	sete   %al
 135:	0f b6 c0             	movzbl %al,%eax
 138:	01 c6                	add    %eax,%esi
 13a:	83 c7 01             	add    $0x1,%edi
            for (int  j = 0; j < bytesize; j++)
 13d:	39 df                	cmp    %ebx,%edi
 13f:	74 b3                	je     f4 <main+0xf4>
                if (bariske >= printBaris)
 141:	39 f2                	cmp    %esi,%edx
 143:	0f be 07             	movsbl (%edi),%eax
 146:	7f e8                	jg     130 <main+0x130>
                    printf(1,"%c",isiFIle[j]);
 148:	83 ec 04             	sub    $0x4,%esp
 14b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 14e:	50                   	push   %eax
 14f:	68 68 09 00 00       	push   $0x968
 154:	6a 01                	push   $0x1
 156:	e8 75 04 00 00       	call   5d0 <printf>
 15b:	83 c4 10             	add    $0x10,%esp
 15e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 161:	eb d7                	jmp    13a <main+0x13a>
            printf(2,"Tail:Read error\n");
 163:	83 ec 08             	sub    $0x8,%esp
 166:	68 54 09 00 00       	push   $0x954
 16b:	6a 02                	push   $0x2
 16d:	e8 5e 04 00 00       	call   5d0 <printf>
 172:	83 c4 10             	add    $0x10,%esp
 175:	e9 3c ff ff ff       	jmp    b6 <main+0xb6>
            printf(2,"Error:File cant open\n");
 17a:	83 ec 08             	sub    $0x8,%esp
 17d:	68 3e 09 00 00       	push   $0x93e
 182:	6a 02                	push   $0x2
 184:	e8 47 04 00 00       	call   5d0 <printf>
 189:	83 c4 10             	add    $0x10,%esp
 18c:	e9 bc fe ff ff       	jmp    4d <main+0x4d>
        printf(2,"Error:tail files.....");
 191:	50                   	push   %eax
 192:	50                   	push   %eax
 193:	68 28 09 00 00       	push   $0x928
 198:	6a 02                	push   $0x2
 19a:	e8 31 04 00 00       	call   5d0 <printf>
 19f:	83 c4 10             	add    $0x10,%esp
 1a2:	e9 6b ff ff ff       	jmp    112 <main+0x112>
 1a7:	66 90                	xchg   %ax,%ax
 1a9:	66 90                	xchg   %ax,%ax
 1ab:	66 90                	xchg   %ax,%ax
 1ad:	66 90                	xchg   %ax,%ax
 1af:	90                   	nop

000001b0 <strcpy>:
#include "x86.h"
#include "fcntl.h"

char*
strcpy(char *s, const char *t)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	8b 45 08             	mov    0x8(%ebp),%eax
 1b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1ba:	89 c2                	mov    %eax,%edx
 1bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1c0:	83 c1 01             	add    $0x1,%ecx
 1c3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 1c7:	83 c2 01             	add    $0x1,%edx
 1ca:	84 db                	test   %bl,%bl
 1cc:	88 5a ff             	mov    %bl,-0x1(%edx)
 1cf:	75 ef                	jne    1c0 <strcpy+0x10>
    ;
  return os;
}
 1d1:	5b                   	pop    %ebx
 1d2:	5d                   	pop    %ebp
 1d3:	c3                   	ret    
 1d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001e0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	53                   	push   %ebx
 1e4:	8b 55 08             	mov    0x8(%ebp),%edx
 1e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ea:	0f b6 02             	movzbl (%edx),%eax
 1ed:	0f b6 19             	movzbl (%ecx),%ebx
 1f0:	84 c0                	test   %al,%al
 1f2:	75 1c                	jne    210 <strcmp+0x30>
 1f4:	eb 2a                	jmp    220 <strcmp+0x40>
 1f6:	8d 76 00             	lea    0x0(%esi),%esi
 1f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 200:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 203:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 206:	83 c1 01             	add    $0x1,%ecx
 209:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 20c:	84 c0                	test   %al,%al
 20e:	74 10                	je     220 <strcmp+0x40>
 210:	38 d8                	cmp    %bl,%al
 212:	74 ec                	je     200 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 214:	29 d8                	sub    %ebx,%eax
}
 216:	5b                   	pop    %ebx
 217:	5d                   	pop    %ebp
 218:	c3                   	ret    
 219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 220:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 222:	29 d8                	sub    %ebx,%eax
}
 224:	5b                   	pop    %ebx
 225:	5d                   	pop    %ebp
 226:	c3                   	ret    
 227:	89 f6                	mov    %esi,%esi
 229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000230 <strlen>:

uint
strlen(const char *s)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 236:	80 39 00             	cmpb   $0x0,(%ecx)
 239:	74 15                	je     250 <strlen+0x20>
 23b:	31 d2                	xor    %edx,%edx
 23d:	8d 76 00             	lea    0x0(%esi),%esi
 240:	83 c2 01             	add    $0x1,%edx
 243:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 247:	89 d0                	mov    %edx,%eax
 249:	75 f5                	jne    240 <strlen+0x10>
    ;
  return n;
}
 24b:	5d                   	pop    %ebp
 24c:	c3                   	ret    
 24d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 250:	31 c0                	xor    %eax,%eax
}
 252:	5d                   	pop    %ebp
 253:	c3                   	ret    
 254:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 25a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000260 <memset>:

void*
memset(void *dst, int c, uint n)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 267:	8b 4d 10             	mov    0x10(%ebp),%ecx
 26a:	8b 45 0c             	mov    0xc(%ebp),%eax
 26d:	89 d7                	mov    %edx,%edi
 26f:	fc                   	cld    
 270:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 272:	89 d0                	mov    %edx,%eax
 274:	5f                   	pop    %edi
 275:	5d                   	pop    %ebp
 276:	c3                   	ret    
 277:	89 f6                	mov    %esi,%esi
 279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000280 <strchr>:

char*
strchr(const char *s, char c)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	53                   	push   %ebx
 284:	8b 45 08             	mov    0x8(%ebp),%eax
 287:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 28a:	0f b6 10             	movzbl (%eax),%edx
 28d:	84 d2                	test   %dl,%dl
 28f:	74 1d                	je     2ae <strchr+0x2e>
    if(*s == c)
 291:	38 d3                	cmp    %dl,%bl
 293:	89 d9                	mov    %ebx,%ecx
 295:	75 0d                	jne    2a4 <strchr+0x24>
 297:	eb 17                	jmp    2b0 <strchr+0x30>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a0:	38 ca                	cmp    %cl,%dl
 2a2:	74 0c                	je     2b0 <strchr+0x30>
  for(; *s; s++)
 2a4:	83 c0 01             	add    $0x1,%eax
 2a7:	0f b6 10             	movzbl (%eax),%edx
 2aa:	84 d2                	test   %dl,%dl
 2ac:	75 f2                	jne    2a0 <strchr+0x20>
      return (char*)s;
  return 0;
 2ae:	31 c0                	xor    %eax,%eax
}
 2b0:	5b                   	pop    %ebx
 2b1:	5d                   	pop    %ebp
 2b2:	c3                   	ret    
 2b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002c0 <gets>:

char*
gets(char *buf, int max)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	57                   	push   %edi
 2c4:	56                   	push   %esi
 2c5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2c6:	31 f6                	xor    %esi,%esi
 2c8:	89 f3                	mov    %esi,%ebx
{
 2ca:	83 ec 1c             	sub    $0x1c,%esp
 2cd:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 2d0:	eb 2f                	jmp    301 <gets+0x41>
 2d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 2d8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 2db:	83 ec 04             	sub    $0x4,%esp
 2de:	6a 01                	push   $0x1
 2e0:	50                   	push   %eax
 2e1:	6a 00                	push   $0x0
 2e3:	e8 b2 01 00 00       	call   49a <read>
    if(cc < 1)
 2e8:	83 c4 10             	add    $0x10,%esp
 2eb:	85 c0                	test   %eax,%eax
 2ed:	7e 1c                	jle    30b <gets+0x4b>
      break;
    buf[i++] = c;
 2ef:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2f3:	83 c7 01             	add    $0x1,%edi
 2f6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 2f9:	3c 0a                	cmp    $0xa,%al
 2fb:	74 23                	je     320 <gets+0x60>
 2fd:	3c 0d                	cmp    $0xd,%al
 2ff:	74 1f                	je     320 <gets+0x60>
  for(i=0; i+1 < max; ){
 301:	83 c3 01             	add    $0x1,%ebx
 304:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 307:	89 fe                	mov    %edi,%esi
 309:	7c cd                	jl     2d8 <gets+0x18>
 30b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 30d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 310:	c6 03 00             	movb   $0x0,(%ebx)
}
 313:	8d 65 f4             	lea    -0xc(%ebp),%esp
 316:	5b                   	pop    %ebx
 317:	5e                   	pop    %esi
 318:	5f                   	pop    %edi
 319:	5d                   	pop    %ebp
 31a:	c3                   	ret    
 31b:	90                   	nop
 31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 320:	8b 75 08             	mov    0x8(%ebp),%esi
 323:	8b 45 08             	mov    0x8(%ebp),%eax
 326:	01 de                	add    %ebx,%esi
 328:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 32a:	c6 03 00             	movb   $0x0,(%ebx)
}
 32d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 330:	5b                   	pop    %ebx
 331:	5e                   	pop    %esi
 332:	5f                   	pop    %edi
 333:	5d                   	pop    %ebp
 334:	c3                   	ret    
 335:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000340 <stat>:

int
stat(const char *n, struct stat *st)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	56                   	push   %esi
 344:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 345:	83 ec 08             	sub    $0x8,%esp
 348:	6a 00                	push   $0x0
 34a:	ff 75 08             	pushl  0x8(%ebp)
 34d:	e8 70 01 00 00       	call   4c2 <open>
  if(fd < 0)
 352:	83 c4 10             	add    $0x10,%esp
 355:	85 c0                	test   %eax,%eax
 357:	78 27                	js     380 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 359:	83 ec 08             	sub    $0x8,%esp
 35c:	ff 75 0c             	pushl  0xc(%ebp)
 35f:	89 c3                	mov    %eax,%ebx
 361:	50                   	push   %eax
 362:	e8 73 01 00 00       	call   4da <fstat>
  close(fd);
 367:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 36a:	89 c6                	mov    %eax,%esi
  close(fd);
 36c:	e8 39 01 00 00       	call   4aa <close>
  return r;
 371:	83 c4 10             	add    $0x10,%esp
}
 374:	8d 65 f8             	lea    -0x8(%ebp),%esp
 377:	89 f0                	mov    %esi,%eax
 379:	5b                   	pop    %ebx
 37a:	5e                   	pop    %esi
 37b:	5d                   	pop    %ebp
 37c:	c3                   	ret    
 37d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 380:	be ff ff ff ff       	mov    $0xffffffff,%esi
 385:	eb ed                	jmp    374 <stat+0x34>
 387:	89 f6                	mov    %esi,%esi
 389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000390 <atoi>:

int
atoi(const char *s)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	53                   	push   %ebx
 394:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 397:	0f be 11             	movsbl (%ecx),%edx
 39a:	8d 42 d0             	lea    -0x30(%edx),%eax
 39d:	3c 09                	cmp    $0x9,%al
  n = 0;
 39f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 3a4:	77 1f                	ja     3c5 <atoi+0x35>
 3a6:	8d 76 00             	lea    0x0(%esi),%esi
 3a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 3b0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 3b3:	83 c1 01             	add    $0x1,%ecx
 3b6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 3ba:	0f be 11             	movsbl (%ecx),%edx
 3bd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 3c0:	80 fb 09             	cmp    $0x9,%bl
 3c3:	76 eb                	jbe    3b0 <atoi+0x20>
  return n;
}
 3c5:	5b                   	pop    %ebx
 3c6:	5d                   	pop    %ebp
 3c7:	c3                   	ret    
 3c8:	90                   	nop
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003d0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	56                   	push   %esi
 3d4:	53                   	push   %ebx
 3d5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3d8:	8b 45 08             	mov    0x8(%ebp),%eax
 3db:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3de:	85 db                	test   %ebx,%ebx
 3e0:	7e 14                	jle    3f6 <memmove+0x26>
 3e2:	31 d2                	xor    %edx,%edx
 3e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 3e8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3ec:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3ef:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 3f2:	39 d3                	cmp    %edx,%ebx
 3f4:	75 f2                	jne    3e8 <memmove+0x18>
  return vdst;
}
 3f6:	5b                   	pop    %ebx
 3f7:	5e                   	pop    %esi
 3f8:	5d                   	pop    %ebp
 3f9:	c3                   	ret    
 3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000400 <strcat>:

char *
strcat(char *d,const char *s)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	53                   	push   %ebx
 404:	8b 45 08             	mov    0x8(%ebp),%eax
 407:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *temp = d;
  while (*d)
 40a:	80 38 00             	cmpb   $0x0,(%eax)
 40d:	89 c2                	mov    %eax,%edx
 40f:	74 28                	je     439 <strcat+0x39>
 411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ++d;
 418:	83 c2 01             	add    $0x1,%edx
  while (*d)
 41b:	80 3a 00             	cmpb   $0x0,(%edx)
 41e:	75 f8                	jne    418 <strcat+0x18>
  while (*s)
 420:	0f b6 0b             	movzbl (%ebx),%ecx
 423:	84 c9                	test   %cl,%cl
 425:	74 19                	je     440 <strcat+0x40>
 427:	89 f6                	mov    %esi,%esi
 429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    *d++ = *s++;
 430:	83 c2 01             	add    $0x1,%edx
 433:	83 c3 01             	add    $0x1,%ebx
 436:	88 4a ff             	mov    %cl,-0x1(%edx)
  while (*s)
 439:	0f b6 0b             	movzbl (%ebx),%ecx
 43c:	84 c9                	test   %cl,%cl
 43e:	75 f0                	jne    430 <strcat+0x30>
  *d = 0;
 440:	c6 02 00             	movb   $0x0,(%edx)
  return temp;
}
 443:	5b                   	pop    %ebx
 444:	5d                   	pop    %ebp
 445:	c3                   	ret    
 446:	8d 76 00             	lea    0x0(%esi),%esi
 449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000450 <strncpy>:
char *strncpy(char *s, const char *t, int n)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	56                   	push   %esi
 454:	53                   	push   %ebx
 455:	8b 5d 10             	mov    0x10(%ebp),%ebx
 458:	8b 45 08             	mov    0x8(%ebp),%eax
 45b:	8b 75 0c             	mov    0xc(%ebp),%esi
  int i;
  char *os;
  os = s;
  for (i = 0; i < n; i++)
 45e:	85 db                	test   %ebx,%ebx
 460:	7e 14                	jle    476 <strncpy+0x26>
 462:	31 d2                	xor    %edx,%edx
 464:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  {
    s[i] = t[i];
 468:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 46c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
  for (i = 0; i < n; i++)
 46f:	83 c2 01             	add    $0x1,%edx
 472:	39 d3                	cmp    %edx,%ebx
 474:	75 f2                	jne    468 <strncpy+0x18>
  }
  return os;
}
 476:	5b                   	pop    %ebx
 477:	5e                   	pop    %esi
 478:	5d                   	pop    %ebp
 479:	c3                   	ret    

0000047a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 47a:	b8 01 00 00 00       	mov    $0x1,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <exit>:
SYSCALL(exit)
 482:	b8 02 00 00 00       	mov    $0x2,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    

0000048a <wait>:
SYSCALL(wait)
 48a:	b8 03 00 00 00       	mov    $0x3,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <pipe>:
SYSCALL(pipe)
 492:	b8 04 00 00 00       	mov    $0x4,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    

0000049a <read>:
SYSCALL(read)
 49a:	b8 05 00 00 00       	mov    $0x5,%eax
 49f:	cd 40                	int    $0x40
 4a1:	c3                   	ret    

000004a2 <write>:
SYSCALL(write)
 4a2:	b8 10 00 00 00       	mov    $0x10,%eax
 4a7:	cd 40                	int    $0x40
 4a9:	c3                   	ret    

000004aa <close>:
SYSCALL(close)
 4aa:	b8 15 00 00 00       	mov    $0x15,%eax
 4af:	cd 40                	int    $0x40
 4b1:	c3                   	ret    

000004b2 <kill>:
SYSCALL(kill)
 4b2:	b8 06 00 00 00       	mov    $0x6,%eax
 4b7:	cd 40                	int    $0x40
 4b9:	c3                   	ret    

000004ba <exec>:
SYSCALL(exec)
 4ba:	b8 07 00 00 00       	mov    $0x7,%eax
 4bf:	cd 40                	int    $0x40
 4c1:	c3                   	ret    

000004c2 <open>:
SYSCALL(open)
 4c2:	b8 0f 00 00 00       	mov    $0xf,%eax
 4c7:	cd 40                	int    $0x40
 4c9:	c3                   	ret    

000004ca <mknod>:
SYSCALL(mknod)
 4ca:	b8 11 00 00 00       	mov    $0x11,%eax
 4cf:	cd 40                	int    $0x40
 4d1:	c3                   	ret    

000004d2 <unlink>:
SYSCALL(unlink)
 4d2:	b8 12 00 00 00       	mov    $0x12,%eax
 4d7:	cd 40                	int    $0x40
 4d9:	c3                   	ret    

000004da <fstat>:
SYSCALL(fstat)
 4da:	b8 08 00 00 00       	mov    $0x8,%eax
 4df:	cd 40                	int    $0x40
 4e1:	c3                   	ret    

000004e2 <link>:
SYSCALL(link)
 4e2:	b8 13 00 00 00       	mov    $0x13,%eax
 4e7:	cd 40                	int    $0x40
 4e9:	c3                   	ret    

000004ea <mkdir>:
SYSCALL(mkdir)
 4ea:	b8 14 00 00 00       	mov    $0x14,%eax
 4ef:	cd 40                	int    $0x40
 4f1:	c3                   	ret    

000004f2 <chdir>:
SYSCALL(chdir)
 4f2:	b8 09 00 00 00       	mov    $0x9,%eax
 4f7:	cd 40                	int    $0x40
 4f9:	c3                   	ret    

000004fa <dup>:
SYSCALL(dup)
 4fa:	b8 0a 00 00 00       	mov    $0xa,%eax
 4ff:	cd 40                	int    $0x40
 501:	c3                   	ret    

00000502 <getpid>:
SYSCALL(getpid)
 502:	b8 0b 00 00 00       	mov    $0xb,%eax
 507:	cd 40                	int    $0x40
 509:	c3                   	ret    

0000050a <sbrk>:
SYSCALL(sbrk)
 50a:	b8 0c 00 00 00       	mov    $0xc,%eax
 50f:	cd 40                	int    $0x40
 511:	c3                   	ret    

00000512 <sleep>:
SYSCALL(sleep)
 512:	b8 0d 00 00 00       	mov    $0xd,%eax
 517:	cd 40                	int    $0x40
 519:	c3                   	ret    

0000051a <uptime>:
SYSCALL(uptime)
 51a:	b8 0e 00 00 00       	mov    $0xe,%eax
 51f:	cd 40                	int    $0x40
 521:	c3                   	ret    
 522:	66 90                	xchg   %ax,%ax
 524:	66 90                	xchg   %ax,%ax
 526:	66 90                	xchg   %ax,%ax
 528:	66 90                	xchg   %ax,%ax
 52a:	66 90                	xchg   %ax,%ax
 52c:	66 90                	xchg   %ax,%ax
 52e:	66 90                	xchg   %ax,%ax

00000530 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	56                   	push   %esi
 535:	53                   	push   %ebx
 536:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 539:	85 d2                	test   %edx,%edx
{
 53b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 53e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 540:	79 76                	jns    5b8 <printint+0x88>
 542:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 546:	74 70                	je     5b8 <printint+0x88>
    x = -xx;
 548:	f7 d8                	neg    %eax
    neg = 1;
 54a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 551:	31 f6                	xor    %esi,%esi
 553:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 556:	eb 0a                	jmp    562 <printint+0x32>
 558:	90                   	nop
 559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 560:	89 fe                	mov    %edi,%esi
 562:	31 d2                	xor    %edx,%edx
 564:	8d 7e 01             	lea    0x1(%esi),%edi
 567:	f7 f1                	div    %ecx
 569:	0f b6 92 74 09 00 00 	movzbl 0x974(%edx),%edx
  }while((x /= base) != 0);
 570:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 572:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 575:	75 e9                	jne    560 <printint+0x30>
  if(neg)
 577:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 57a:	85 c0                	test   %eax,%eax
 57c:	74 08                	je     586 <printint+0x56>
    buf[i++] = '-';
 57e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 583:	8d 7e 02             	lea    0x2(%esi),%edi
 586:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 58a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 58d:	8d 76 00             	lea    0x0(%esi),%esi
 590:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 593:	83 ec 04             	sub    $0x4,%esp
 596:	83 ee 01             	sub    $0x1,%esi
 599:	6a 01                	push   $0x1
 59b:	53                   	push   %ebx
 59c:	57                   	push   %edi
 59d:	88 45 d7             	mov    %al,-0x29(%ebp)
 5a0:	e8 fd fe ff ff       	call   4a2 <write>

  while(--i >= 0)
 5a5:	83 c4 10             	add    $0x10,%esp
 5a8:	39 de                	cmp    %ebx,%esi
 5aa:	75 e4                	jne    590 <printint+0x60>
    putc(fd, buf[i]);
}
 5ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5af:	5b                   	pop    %ebx
 5b0:	5e                   	pop    %esi
 5b1:	5f                   	pop    %edi
 5b2:	5d                   	pop    %ebp
 5b3:	c3                   	ret    
 5b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5b8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 5bf:	eb 90                	jmp    551 <printint+0x21>
 5c1:	eb 0d                	jmp    5d0 <printf>
 5c3:	90                   	nop
 5c4:	90                   	nop
 5c5:	90                   	nop
 5c6:	90                   	nop
 5c7:	90                   	nop
 5c8:	90                   	nop
 5c9:	90                   	nop
 5ca:	90                   	nop
 5cb:	90                   	nop
 5cc:	90                   	nop
 5cd:	90                   	nop
 5ce:	90                   	nop
 5cf:	90                   	nop

000005d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5d9:	8b 75 0c             	mov    0xc(%ebp),%esi
 5dc:	0f b6 1e             	movzbl (%esi),%ebx
 5df:	84 db                	test   %bl,%bl
 5e1:	0f 84 b3 00 00 00    	je     69a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 5e7:	8d 45 10             	lea    0x10(%ebp),%eax
 5ea:	83 c6 01             	add    $0x1,%esi
  state = 0;
 5ed:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 5ef:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 5f2:	eb 2f                	jmp    623 <printf+0x53>
 5f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 5f8:	83 f8 25             	cmp    $0x25,%eax
 5fb:	0f 84 a7 00 00 00    	je     6a8 <printf+0xd8>
  write(fd, &c, 1);
 601:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 604:	83 ec 04             	sub    $0x4,%esp
 607:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 60a:	6a 01                	push   $0x1
 60c:	50                   	push   %eax
 60d:	ff 75 08             	pushl  0x8(%ebp)
 610:	e8 8d fe ff ff       	call   4a2 <write>
 615:	83 c4 10             	add    $0x10,%esp
 618:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 61b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 61f:	84 db                	test   %bl,%bl
 621:	74 77                	je     69a <printf+0xca>
    if(state == 0){
 623:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 625:	0f be cb             	movsbl %bl,%ecx
 628:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 62b:	74 cb                	je     5f8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 62d:	83 ff 25             	cmp    $0x25,%edi
 630:	75 e6                	jne    618 <printf+0x48>
      if(c == 'd'){
 632:	83 f8 64             	cmp    $0x64,%eax
 635:	0f 84 05 01 00 00    	je     740 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 63b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 641:	83 f9 70             	cmp    $0x70,%ecx
 644:	74 72                	je     6b8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 646:	83 f8 73             	cmp    $0x73,%eax
 649:	0f 84 99 00 00 00    	je     6e8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 64f:	83 f8 63             	cmp    $0x63,%eax
 652:	0f 84 08 01 00 00    	je     760 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 658:	83 f8 25             	cmp    $0x25,%eax
 65b:	0f 84 ef 00 00 00    	je     750 <printf+0x180>
  write(fd, &c, 1);
 661:	8d 45 e7             	lea    -0x19(%ebp),%eax
 664:	83 ec 04             	sub    $0x4,%esp
 667:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 66b:	6a 01                	push   $0x1
 66d:	50                   	push   %eax
 66e:	ff 75 08             	pushl  0x8(%ebp)
 671:	e8 2c fe ff ff       	call   4a2 <write>
 676:	83 c4 0c             	add    $0xc,%esp
 679:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 67c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 67f:	6a 01                	push   $0x1
 681:	50                   	push   %eax
 682:	ff 75 08             	pushl  0x8(%ebp)
 685:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 688:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 68a:	e8 13 fe ff ff       	call   4a2 <write>
  for(i = 0; fmt[i]; i++){
 68f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 693:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 696:	84 db                	test   %bl,%bl
 698:	75 89                	jne    623 <printf+0x53>
    }
  }
}
 69a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 69d:	5b                   	pop    %ebx
 69e:	5e                   	pop    %esi
 69f:	5f                   	pop    %edi
 6a0:	5d                   	pop    %ebp
 6a1:	c3                   	ret    
 6a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 6a8:	bf 25 00 00 00       	mov    $0x25,%edi
 6ad:	e9 66 ff ff ff       	jmp    618 <printf+0x48>
 6b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6b8:	83 ec 0c             	sub    $0xc,%esp
 6bb:	b9 10 00 00 00       	mov    $0x10,%ecx
 6c0:	6a 00                	push   $0x0
 6c2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 6c5:	8b 45 08             	mov    0x8(%ebp),%eax
 6c8:	8b 17                	mov    (%edi),%edx
 6ca:	e8 61 fe ff ff       	call   530 <printint>
        ap++;
 6cf:	89 f8                	mov    %edi,%eax
 6d1:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6d4:	31 ff                	xor    %edi,%edi
        ap++;
 6d6:	83 c0 04             	add    $0x4,%eax
 6d9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 6dc:	e9 37 ff ff ff       	jmp    618 <printf+0x48>
 6e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6e8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 6eb:	8b 08                	mov    (%eax),%ecx
        ap++;
 6ed:	83 c0 04             	add    $0x4,%eax
 6f0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 6f3:	85 c9                	test   %ecx,%ecx
 6f5:	0f 84 8e 00 00 00    	je     789 <printf+0x1b9>
        while(*s != 0){
 6fb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 6fe:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 700:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 702:	84 c0                	test   %al,%al
 704:	0f 84 0e ff ff ff    	je     618 <printf+0x48>
 70a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 70d:	89 de                	mov    %ebx,%esi
 70f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 712:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 715:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 718:	83 ec 04             	sub    $0x4,%esp
          s++;
 71b:	83 c6 01             	add    $0x1,%esi
 71e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 721:	6a 01                	push   $0x1
 723:	57                   	push   %edi
 724:	53                   	push   %ebx
 725:	e8 78 fd ff ff       	call   4a2 <write>
        while(*s != 0){
 72a:	0f b6 06             	movzbl (%esi),%eax
 72d:	83 c4 10             	add    $0x10,%esp
 730:	84 c0                	test   %al,%al
 732:	75 e4                	jne    718 <printf+0x148>
 734:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 737:	31 ff                	xor    %edi,%edi
 739:	e9 da fe ff ff       	jmp    618 <printf+0x48>
 73e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 740:	83 ec 0c             	sub    $0xc,%esp
 743:	b9 0a 00 00 00       	mov    $0xa,%ecx
 748:	6a 01                	push   $0x1
 74a:	e9 73 ff ff ff       	jmp    6c2 <printf+0xf2>
 74f:	90                   	nop
  write(fd, &c, 1);
 750:	83 ec 04             	sub    $0x4,%esp
 753:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 756:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 759:	6a 01                	push   $0x1
 75b:	e9 21 ff ff ff       	jmp    681 <printf+0xb1>
        putc(fd, *ap);
 760:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 763:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 766:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 768:	6a 01                	push   $0x1
        ap++;
 76a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 76d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 770:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 773:	50                   	push   %eax
 774:	ff 75 08             	pushl  0x8(%ebp)
 777:	e8 26 fd ff ff       	call   4a2 <write>
        ap++;
 77c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 77f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 782:	31 ff                	xor    %edi,%edi
 784:	e9 8f fe ff ff       	jmp    618 <printf+0x48>
          s = "(null)";
 789:	bb 6b 09 00 00       	mov    $0x96b,%ebx
        while(*s != 0){
 78e:	b8 28 00 00 00       	mov    $0x28,%eax
 793:	e9 72 ff ff ff       	jmp    70a <printf+0x13a>
 798:	66 90                	xchg   %ax,%ax
 79a:	66 90                	xchg   %ax,%ax
 79c:	66 90                	xchg   %ax,%ax
 79e:	66 90                	xchg   %ax,%ax

000007a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 7a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7a1:	a1 80 0c 00 00       	mov    0xc80,%eax
{
 7a6:	89 e5                	mov    %esp,%ebp
 7a8:	57                   	push   %edi
 7a9:	56                   	push   %esi
 7aa:	53                   	push   %ebx
 7ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 7ae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7b8:	39 c8                	cmp    %ecx,%eax
 7ba:	8b 10                	mov    (%eax),%edx
 7bc:	73 32                	jae    7f0 <free+0x50>
 7be:	39 d1                	cmp    %edx,%ecx
 7c0:	72 04                	jb     7c6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7c2:	39 d0                	cmp    %edx,%eax
 7c4:	72 32                	jb     7f8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7c6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7c9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7cc:	39 fa                	cmp    %edi,%edx
 7ce:	74 30                	je     800 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 7d0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 7d3:	8b 50 04             	mov    0x4(%eax),%edx
 7d6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 7d9:	39 f1                	cmp    %esi,%ecx
 7db:	74 3a                	je     817 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 7dd:	89 08                	mov    %ecx,(%eax)
  freep = p;
 7df:	a3 80 0c 00 00       	mov    %eax,0xc80
}
 7e4:	5b                   	pop    %ebx
 7e5:	5e                   	pop    %esi
 7e6:	5f                   	pop    %edi
 7e7:	5d                   	pop    %ebp
 7e8:	c3                   	ret    
 7e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7f0:	39 d0                	cmp    %edx,%eax
 7f2:	72 04                	jb     7f8 <free+0x58>
 7f4:	39 d1                	cmp    %edx,%ecx
 7f6:	72 ce                	jb     7c6 <free+0x26>
{
 7f8:	89 d0                	mov    %edx,%eax
 7fa:	eb bc                	jmp    7b8 <free+0x18>
 7fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 800:	03 72 04             	add    0x4(%edx),%esi
 803:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 806:	8b 10                	mov    (%eax),%edx
 808:	8b 12                	mov    (%edx),%edx
 80a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 80d:	8b 50 04             	mov    0x4(%eax),%edx
 810:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 813:	39 f1                	cmp    %esi,%ecx
 815:	75 c6                	jne    7dd <free+0x3d>
    p->s.size += bp->s.size;
 817:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 81a:	a3 80 0c 00 00       	mov    %eax,0xc80
    p->s.size += bp->s.size;
 81f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 822:	8b 53 f8             	mov    -0x8(%ebx),%edx
 825:	89 10                	mov    %edx,(%eax)
}
 827:	5b                   	pop    %ebx
 828:	5e                   	pop    %esi
 829:	5f                   	pop    %edi
 82a:	5d                   	pop    %ebp
 82b:	c3                   	ret    
 82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000830 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	57                   	push   %edi
 834:	56                   	push   %esi
 835:	53                   	push   %ebx
 836:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 839:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 83c:	8b 15 80 0c 00 00    	mov    0xc80,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 842:	8d 78 07             	lea    0x7(%eax),%edi
 845:	c1 ef 03             	shr    $0x3,%edi
 848:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 84b:	85 d2                	test   %edx,%edx
 84d:	0f 84 9d 00 00 00    	je     8f0 <malloc+0xc0>
 853:	8b 02                	mov    (%edx),%eax
 855:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 858:	39 cf                	cmp    %ecx,%edi
 85a:	76 6c                	jbe    8c8 <malloc+0x98>
 85c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 862:	bb 00 10 00 00       	mov    $0x1000,%ebx
 867:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 86a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 871:	eb 0e                	jmp    881 <malloc+0x51>
 873:	90                   	nop
 874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 878:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 87a:	8b 48 04             	mov    0x4(%eax),%ecx
 87d:	39 f9                	cmp    %edi,%ecx
 87f:	73 47                	jae    8c8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 881:	39 05 80 0c 00 00    	cmp    %eax,0xc80
 887:	89 c2                	mov    %eax,%edx
 889:	75 ed                	jne    878 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 88b:	83 ec 0c             	sub    $0xc,%esp
 88e:	56                   	push   %esi
 88f:	e8 76 fc ff ff       	call   50a <sbrk>
  if(p == (char*)-1)
 894:	83 c4 10             	add    $0x10,%esp
 897:	83 f8 ff             	cmp    $0xffffffff,%eax
 89a:	74 1c                	je     8b8 <malloc+0x88>
  hp->s.size = nu;
 89c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 89f:	83 ec 0c             	sub    $0xc,%esp
 8a2:	83 c0 08             	add    $0x8,%eax
 8a5:	50                   	push   %eax
 8a6:	e8 f5 fe ff ff       	call   7a0 <free>
  return freep;
 8ab:	8b 15 80 0c 00 00    	mov    0xc80,%edx
      if((p = morecore(nunits)) == 0)
 8b1:	83 c4 10             	add    $0x10,%esp
 8b4:	85 d2                	test   %edx,%edx
 8b6:	75 c0                	jne    878 <malloc+0x48>
        return 0;
  }
}
 8b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8bb:	31 c0                	xor    %eax,%eax
}
 8bd:	5b                   	pop    %ebx
 8be:	5e                   	pop    %esi
 8bf:	5f                   	pop    %edi
 8c0:	5d                   	pop    %ebp
 8c1:	c3                   	ret    
 8c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8c8:	39 cf                	cmp    %ecx,%edi
 8ca:	74 54                	je     920 <malloc+0xf0>
        p->s.size -= nunits;
 8cc:	29 f9                	sub    %edi,%ecx
 8ce:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8d1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8d4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 8d7:	89 15 80 0c 00 00    	mov    %edx,0xc80
}
 8dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8e0:	83 c0 08             	add    $0x8,%eax
}
 8e3:	5b                   	pop    %ebx
 8e4:	5e                   	pop    %esi
 8e5:	5f                   	pop    %edi
 8e6:	5d                   	pop    %ebp
 8e7:	c3                   	ret    
 8e8:	90                   	nop
 8e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 8f0:	c7 05 80 0c 00 00 84 	movl   $0xc84,0xc80
 8f7:	0c 00 00 
 8fa:	c7 05 84 0c 00 00 84 	movl   $0xc84,0xc84
 901:	0c 00 00 
    base.s.size = 0;
 904:	b8 84 0c 00 00       	mov    $0xc84,%eax
 909:	c7 05 88 0c 00 00 00 	movl   $0x0,0xc88
 910:	00 00 00 
 913:	e9 44 ff ff ff       	jmp    85c <malloc+0x2c>
 918:	90                   	nop
 919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 920:	8b 08                	mov    (%eax),%ecx
 922:	89 0a                	mov    %ecx,(%edx)
 924:	eb b1                	jmp    8d7 <malloc+0xa7>
