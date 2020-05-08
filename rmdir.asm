
_rmdir:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"
#include "fs.h"

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
  11:	81 ec 58 04 00 00    	sub    $0x458,%esp
  17:	8b 11                	mov    (%ecx),%edx
  19:	8b 41 04             	mov    0x4(%ecx),%eax
    if(argc < 2)
    {
        printf(2,"Usage: rmdir files...\n");
        exit();
    }
    for (int i = 1; i < argc; i++)
  1c:	c7 85 b4 fb ff ff 01 	movl   $0x1,-0x44c(%ebp)
  23:	00 00 00 
    if(argc < 2)
  26:	83 fa 01             	cmp    $0x1,%edx
{
  29:	89 95 a4 fb ff ff    	mov    %edx,-0x45c(%ebp)
  2f:	8d 78 04             	lea    0x4(%eax),%edi
    if(argc < 2)
  32:	7f 3b                	jg     6f <main+0x6f>
  34:	e9 db 01 00 00       	jmp    214 <main+0x214>
  39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            printf(1,"Error:Not a directory\n");
            exit();
        }
        
        else{
            if(st.size < 32) printf(2,"failed to remove'%s':Directory not empty\n",argv[i]);
  40:	83 ec 04             	sub    $0x4,%esp
  43:	50                   	push   %eax
  44:	68 ac 0a 00 00       	push   $0xaac
  49:	6a 02                	push   $0x2
  4b:	e8 50 06 00 00       	call   6a0 <printf>
  50:	83 c4 10             	add    $0x10,%esp
    for (int i = 1; i < argc; i++)
  53:	83 85 b4 fb ff ff 01 	addl   $0x1,-0x44c(%ebp)
  5a:	83 c7 04             	add    $0x4,%edi
  5d:	8b 85 b4 fb ff ff    	mov    -0x44c(%ebp),%eax
  63:	39 85 a4 fb ff ff    	cmp    %eax,-0x45c(%ebp)
  69:	0f 84 a0 01 00 00    	je     20f <main+0x20f>
        if((fd = open(argv[i],0))<0){
  6f:	83 ec 08             	sub    $0x8,%esp
  72:	6a 00                	push   $0x0
  74:	ff 37                	pushl  (%edi)
  76:	e8 17 05 00 00       	call   592 <open>
  7b:	83 c4 10             	add    $0x10,%esp
  7e:	85 c0                	test   %eax,%eax
  80:	89 c3                	mov    %eax,%ebx
  82:	0f 88 9f 01 00 00    	js     227 <main+0x227>
        if (fstat(fd,&st) < 0)
  88:	8d b5 d4 fb ff ff    	lea    -0x42c(%ebp),%esi
  8e:	83 ec 08             	sub    $0x8,%esp
  91:	56                   	push   %esi
  92:	50                   	push   %eax
  93:	e8 12 05 00 00       	call   5aa <fstat>
  98:	83 c4 10             	add    $0x10,%esp
  9b:	85 c0                	test   %eax,%eax
  9d:	0f 88 98 01 00 00    	js     23b <main+0x23b>
        if(st.type == 2){
  a3:	66 83 bd d4 fb ff ff 	cmpw   $0x2,-0x42c(%ebp)
  aa:	02 
  ab:	0f 84 9e 01 00 00    	je     24f <main+0x24f>
            if(st.size < 32) printf(2,"failed to remove'%s':Directory not empty\n",argv[i]);
  b1:	83 bd e4 fb ff ff 1f 	cmpl   $0x1f,-0x41c(%ebp)
  b8:	8b 07                	mov    (%edi),%eax
  ba:	76 84                	jbe    40 <main+0x40>
            else{
                if (strlen(argv[i]) + 1 + DIRSIZ + 1 > sizeof buf)
  bc:	83 ec 0c             	sub    $0xc,%esp
  bf:	50                   	push   %eax
  c0:	e8 3b 02 00 00       	call   300 <strlen>
  c5:	83 c0 10             	add    $0x10,%eax
  c8:	83 c4 10             	add    $0x10,%esp
  cb:	3d 00 04 00 00       	cmp    $0x400,%eax
  d0:	0f 87 28 01 00 00    	ja     1fe <main+0x1fe>
                {
                    printf(1, "ls: path too long\n");
                    break;
                }
                strcpy(buf, argv[i]);
  d6:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
  dc:	83 ec 08             	sub    $0x8,%esp
  df:	ff 37                	pushl  (%edi)
  e1:	50                   	push   %eax
  e2:	e8 99 01 00 00       	call   280 <strcpy>
                p = buf + strlen(buf);
  e7:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
  ed:	89 04 24             	mov    %eax,(%esp)
  f0:	e8 0b 02 00 00       	call   300 <strlen>
  f5:	8d 8d e8 fb ff ff    	lea    -0x418(%ebp),%ecx
                *p++ = '/';
                int counter = 0;
                while (read(fd, &de, sizeof(de)) == sizeof(de))
  fb:	83 c4 10             	add    $0x10,%esp
                int counter = 0;
  fe:	c7 85 b0 fb ff ff 00 	movl   $0x0,-0x450(%ebp)
 105:	00 00 00 
                p = buf + strlen(buf);
 108:	01 c8                	add    %ecx,%eax
                *p++ = '/';
 10a:	8d 48 01             	lea    0x1(%eax),%ecx
                p = buf + strlen(buf);
 10d:	89 85 ac fb ff ff    	mov    %eax,-0x454(%ebp)
                *p++ = '/';
 113:	c6 00 2f             	movb   $0x2f,(%eax)
 116:	89 8d a8 fb ff ff    	mov    %ecx,-0x458(%ebp)
 11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
                while (read(fd, &de, sizeof(de)) == sizeof(de))
 120:	8d 85 c4 fb ff ff    	lea    -0x43c(%ebp),%eax
 126:	83 ec 04             	sub    $0x4,%esp
 129:	6a 10                	push   $0x10
 12b:	50                   	push   %eax
 12c:	53                   	push   %ebx
 12d:	e8 38 04 00 00       	call   56a <read>
 132:	83 c4 10             	add    $0x10,%esp
 135:	83 f8 10             	cmp    $0x10,%eax
 138:	75 4e                	jne    188 <main+0x188>
                {
                    if (de.inum == 0)
 13a:	66 83 bd c4 fb ff ff 	cmpw   $0x0,-0x43c(%ebp)
 141:	00 
 142:	74 dc                	je     120 <main+0x120>
                        continue;
                    memmove(p, de.name, DIRSIZ);
 144:	8d 85 c6 fb ff ff    	lea    -0x43a(%ebp),%eax
 14a:	83 ec 04             	sub    $0x4,%esp
 14d:	6a 0e                	push   $0xe
 14f:	50                   	push   %eax
 150:	ff b5 a8 fb ff ff    	pushl  -0x458(%ebp)
 156:	e8 45 03 00 00       	call   4a0 <memmove>
                    p[DIRSIZ] = 0;
 15b:	8b 85 ac fb ff ff    	mov    -0x454(%ebp),%eax
 161:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
                    if (stat(buf, &st) < 0)
 165:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
 16b:	5a                   	pop    %edx
 16c:	59                   	pop    %ecx
 16d:	56                   	push   %esi
 16e:	50                   	push   %eax
 16f:	e8 9c 02 00 00       	call   410 <stat>
 174:	83 c4 10             	add    $0x10,%esp
 177:	85 c0                	test   %eax,%eax
 179:	78 65                	js     1e0 <main+0x1e0>
                    {
                        printf(1, "ls: cannot stat %s\n", buf);
                        continue;
                    }
                    counter++;
 17b:	83 85 b0 fb ff ff 01 	addl   $0x1,-0x450(%ebp)
 182:	eb 9c                	jmp    120 <main+0x120>
 184:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
                }
                if (counter > 2)
 188:	83 bd b0 fb ff ff 02 	cmpl   $0x2,-0x450(%ebp)
 18f:	8b 07                	mov    (%edi),%eax
 191:	7e 1d                	jle    1b0 <main+0x1b0>
                {
                    printf(1, "failed to remove'%s':Directory not empty\n", argv[i]);
 193:	83 ec 04             	sub    $0x4,%esp
 196:	50                   	push   %eax
 197:	68 ac 0a 00 00       	push   $0xaac
 19c:	6a 01                	push   $0x1
 19e:	e8 fd 04 00 00       	call   6a0 <printf>
 1a3:	83 c4 10             	add    $0x10,%esp
 1a6:	e9 a8 fe ff ff       	jmp    53 <main+0x53>
 1ab:	90                   	nop
 1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
                }
                else
                {
                    if (unlink(argv[i]) < 0)
 1b0:	83 ec 0c             	sub    $0xc,%esp
 1b3:	50                   	push   %eax
 1b4:	e8 e9 03 00 00       	call   5a2 <unlink>
 1b9:	83 c4 10             	add    $0x10,%esp
 1bc:	85 c0                	test   %eax,%eax
 1be:	0f 88 9e 00 00 00    	js     262 <main+0x262>
                    {
                        printf(1, "Error:Directory not empty\nError Code = %d\n", counter);
                        exit();
                    }
                    printf(1, "Remove %s complete\n", argv[i]);
 1c4:	83 ec 04             	sub    $0x4,%esp
 1c7:	ff 37                	pushl  (%edi)
 1c9:	68 4d 0a 00 00       	push   $0xa4d
 1ce:	6a 01                	push   $0x1
 1d0:	e8 cb 04 00 00       	call   6a0 <printf>
 1d5:	83 c4 10             	add    $0x10,%esp
 1d8:	e9 76 fe ff ff       	jmp    53 <main+0x53>
 1dd:	8d 76 00             	lea    0x0(%esi),%esi
                        printf(1, "ls: cannot stat %s\n", buf);
 1e0:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
 1e6:	83 ec 04             	sub    $0x4,%esp
 1e9:	50                   	push   %eax
 1ea:	68 39 0a 00 00       	push   $0xa39
 1ef:	6a 01                	push   $0x1
 1f1:	e8 aa 04 00 00       	call   6a0 <printf>
                        continue;
 1f6:	83 c4 10             	add    $0x10,%esp
 1f9:	e9 22 ff ff ff       	jmp    120 <main+0x120>
                    printf(1, "ls: path too long\n");
 1fe:	53                   	push   %ebx
 1ff:	53                   	push   %ebx
 200:	68 26 0a 00 00       	push   $0xa26
 205:	6a 01                	push   $0x1
 207:	e8 94 04 00 00       	call   6a0 <printf>
                    break;
 20c:	83 c4 10             	add    $0x10,%esp
                }
            }
        }
        
    }
    exit();
 20f:	e8 3e 03 00 00       	call   552 <exit>
        printf(2,"Usage: rmdir files...\n");
 214:	50                   	push   %eax
 215:	50                   	push   %eax
 216:	68 f8 09 00 00       	push   $0x9f8
 21b:	6a 02                	push   $0x2
 21d:	e8 7e 04 00 00       	call   6a0 <printf>
        exit();
 222:	e8 2b 03 00 00       	call   552 <exit>
            printf(2, "failed to remove'%s':Path error\n", argv[i]);
 227:	50                   	push   %eax
 228:	ff 37                	pushl  (%edi)
 22a:	68 64 0a 00 00       	push   $0xa64
 22f:	6a 02                	push   $0x2
 231:	e8 6a 04 00 00       	call   6a0 <printf>
            exit();
 236:	e8 17 03 00 00       	call   552 <exit>
            printf(2, "failed to remove'%s':Stat error\n", argv[i]);
 23b:	50                   	push   %eax
 23c:	ff 37                	pushl  (%edi)
 23e:	68 88 0a 00 00       	push   $0xa88
 243:	6a 02                	push   $0x2
 245:	e8 56 04 00 00       	call   6a0 <printf>
            exit();
 24a:	e8 03 03 00 00       	call   552 <exit>
            printf(1,"Error:Not a directory\n");
 24f:	56                   	push   %esi
 250:	56                   	push   %esi
 251:	68 0f 0a 00 00       	push   $0xa0f
 256:	6a 01                	push   $0x1
 258:	e8 43 04 00 00       	call   6a0 <printf>
            exit();
 25d:	e8 f0 02 00 00       	call   552 <exit>
                        printf(1, "Error:Directory not empty\nError Code = %d\n", counter);
 262:	50                   	push   %eax
 263:	ff b5 b0 fb ff ff    	pushl  -0x450(%ebp)
 269:	68 d8 0a 00 00       	push   $0xad8
 26e:	6a 01                	push   $0x1
 270:	e8 2b 04 00 00       	call   6a0 <printf>
                        exit();
 275:	e8 d8 02 00 00       	call   552 <exit>
 27a:	66 90                	xchg   %ax,%ax
 27c:	66 90                	xchg   %ax,%ax
 27e:	66 90                	xchg   %ax,%ax

00000280 <strcpy>:
#include "x86.h"
#include "fcntl.h"

char*
strcpy(char *s, const char *t)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	53                   	push   %ebx
 284:	8b 45 08             	mov    0x8(%ebp),%eax
 287:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 28a:	89 c2                	mov    %eax,%edx
 28c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 290:	83 c1 01             	add    $0x1,%ecx
 293:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 297:	83 c2 01             	add    $0x1,%edx
 29a:	84 db                	test   %bl,%bl
 29c:	88 5a ff             	mov    %bl,-0x1(%edx)
 29f:	75 ef                	jne    290 <strcpy+0x10>
    ;
  return os;
}
 2a1:	5b                   	pop    %ebx
 2a2:	5d                   	pop    %ebp
 2a3:	c3                   	ret    
 2a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	53                   	push   %ebx
 2b4:	8b 55 08             	mov    0x8(%ebp),%edx
 2b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2ba:	0f b6 02             	movzbl (%edx),%eax
 2bd:	0f b6 19             	movzbl (%ecx),%ebx
 2c0:	84 c0                	test   %al,%al
 2c2:	75 1c                	jne    2e0 <strcmp+0x30>
 2c4:	eb 2a                	jmp    2f0 <strcmp+0x40>
 2c6:	8d 76 00             	lea    0x0(%esi),%esi
 2c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 2d0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 2d3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 2d6:	83 c1 01             	add    $0x1,%ecx
 2d9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 2dc:	84 c0                	test   %al,%al
 2de:	74 10                	je     2f0 <strcmp+0x40>
 2e0:	38 d8                	cmp    %bl,%al
 2e2:	74 ec                	je     2d0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 2e4:	29 d8                	sub    %ebx,%eax
}
 2e6:	5b                   	pop    %ebx
 2e7:	5d                   	pop    %ebp
 2e8:	c3                   	ret    
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2f0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 2f2:	29 d8                	sub    %ebx,%eax
}
 2f4:	5b                   	pop    %ebx
 2f5:	5d                   	pop    %ebp
 2f6:	c3                   	ret    
 2f7:	89 f6                	mov    %esi,%esi
 2f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000300 <strlen>:

uint
strlen(const char *s)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 306:	80 39 00             	cmpb   $0x0,(%ecx)
 309:	74 15                	je     320 <strlen+0x20>
 30b:	31 d2                	xor    %edx,%edx
 30d:	8d 76 00             	lea    0x0(%esi),%esi
 310:	83 c2 01             	add    $0x1,%edx
 313:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 317:	89 d0                	mov    %edx,%eax
 319:	75 f5                	jne    310 <strlen+0x10>
    ;
  return n;
}
 31b:	5d                   	pop    %ebp
 31c:	c3                   	ret    
 31d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 320:	31 c0                	xor    %eax,%eax
}
 322:	5d                   	pop    %ebp
 323:	c3                   	ret    
 324:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 32a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000330 <memset>:

void*
memset(void *dst, int c, uint n)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	57                   	push   %edi
 334:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 337:	8b 4d 10             	mov    0x10(%ebp),%ecx
 33a:	8b 45 0c             	mov    0xc(%ebp),%eax
 33d:	89 d7                	mov    %edx,%edi
 33f:	fc                   	cld    
 340:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 342:	89 d0                	mov    %edx,%eax
 344:	5f                   	pop    %edi
 345:	5d                   	pop    %ebp
 346:	c3                   	ret    
 347:	89 f6                	mov    %esi,%esi
 349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000350 <strchr>:

char*
strchr(const char *s, char c)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	53                   	push   %ebx
 354:	8b 45 08             	mov    0x8(%ebp),%eax
 357:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 35a:	0f b6 10             	movzbl (%eax),%edx
 35d:	84 d2                	test   %dl,%dl
 35f:	74 1d                	je     37e <strchr+0x2e>
    if(*s == c)
 361:	38 d3                	cmp    %dl,%bl
 363:	89 d9                	mov    %ebx,%ecx
 365:	75 0d                	jne    374 <strchr+0x24>
 367:	eb 17                	jmp    380 <strchr+0x30>
 369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 370:	38 ca                	cmp    %cl,%dl
 372:	74 0c                	je     380 <strchr+0x30>
  for(; *s; s++)
 374:	83 c0 01             	add    $0x1,%eax
 377:	0f b6 10             	movzbl (%eax),%edx
 37a:	84 d2                	test   %dl,%dl
 37c:	75 f2                	jne    370 <strchr+0x20>
      return (char*)s;
  return 0;
 37e:	31 c0                	xor    %eax,%eax
}
 380:	5b                   	pop    %ebx
 381:	5d                   	pop    %ebp
 382:	c3                   	ret    
 383:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000390 <gets>:

char*
gets(char *buf, int max)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	57                   	push   %edi
 394:	56                   	push   %esi
 395:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 396:	31 f6                	xor    %esi,%esi
 398:	89 f3                	mov    %esi,%ebx
{
 39a:	83 ec 1c             	sub    $0x1c,%esp
 39d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 3a0:	eb 2f                	jmp    3d1 <gets+0x41>
 3a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 3a8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3ab:	83 ec 04             	sub    $0x4,%esp
 3ae:	6a 01                	push   $0x1
 3b0:	50                   	push   %eax
 3b1:	6a 00                	push   $0x0
 3b3:	e8 b2 01 00 00       	call   56a <read>
    if(cc < 1)
 3b8:	83 c4 10             	add    $0x10,%esp
 3bb:	85 c0                	test   %eax,%eax
 3bd:	7e 1c                	jle    3db <gets+0x4b>
      break;
    buf[i++] = c;
 3bf:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3c3:	83 c7 01             	add    $0x1,%edi
 3c6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 3c9:	3c 0a                	cmp    $0xa,%al
 3cb:	74 23                	je     3f0 <gets+0x60>
 3cd:	3c 0d                	cmp    $0xd,%al
 3cf:	74 1f                	je     3f0 <gets+0x60>
  for(i=0; i+1 < max; ){
 3d1:	83 c3 01             	add    $0x1,%ebx
 3d4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3d7:	89 fe                	mov    %edi,%esi
 3d9:	7c cd                	jl     3a8 <gets+0x18>
 3db:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 3dd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 3e0:	c6 03 00             	movb   $0x0,(%ebx)
}
 3e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3e6:	5b                   	pop    %ebx
 3e7:	5e                   	pop    %esi
 3e8:	5f                   	pop    %edi
 3e9:	5d                   	pop    %ebp
 3ea:	c3                   	ret    
 3eb:	90                   	nop
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3f0:	8b 75 08             	mov    0x8(%ebp),%esi
 3f3:	8b 45 08             	mov    0x8(%ebp),%eax
 3f6:	01 de                	add    %ebx,%esi
 3f8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 3fa:	c6 03 00             	movb   $0x0,(%ebx)
}
 3fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 400:	5b                   	pop    %ebx
 401:	5e                   	pop    %esi
 402:	5f                   	pop    %edi
 403:	5d                   	pop    %ebp
 404:	c3                   	ret    
 405:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000410 <stat>:

int
stat(const char *n, struct stat *st)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	56                   	push   %esi
 414:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 415:	83 ec 08             	sub    $0x8,%esp
 418:	6a 00                	push   $0x0
 41a:	ff 75 08             	pushl  0x8(%ebp)
 41d:	e8 70 01 00 00       	call   592 <open>
  if(fd < 0)
 422:	83 c4 10             	add    $0x10,%esp
 425:	85 c0                	test   %eax,%eax
 427:	78 27                	js     450 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 429:	83 ec 08             	sub    $0x8,%esp
 42c:	ff 75 0c             	pushl  0xc(%ebp)
 42f:	89 c3                	mov    %eax,%ebx
 431:	50                   	push   %eax
 432:	e8 73 01 00 00       	call   5aa <fstat>
  close(fd);
 437:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 43a:	89 c6                	mov    %eax,%esi
  close(fd);
 43c:	e8 39 01 00 00       	call   57a <close>
  return r;
 441:	83 c4 10             	add    $0x10,%esp
}
 444:	8d 65 f8             	lea    -0x8(%ebp),%esp
 447:	89 f0                	mov    %esi,%eax
 449:	5b                   	pop    %ebx
 44a:	5e                   	pop    %esi
 44b:	5d                   	pop    %ebp
 44c:	c3                   	ret    
 44d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 450:	be ff ff ff ff       	mov    $0xffffffff,%esi
 455:	eb ed                	jmp    444 <stat+0x34>
 457:	89 f6                	mov    %esi,%esi
 459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000460 <atoi>:

int
atoi(const char *s)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	53                   	push   %ebx
 464:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 467:	0f be 11             	movsbl (%ecx),%edx
 46a:	8d 42 d0             	lea    -0x30(%edx),%eax
 46d:	3c 09                	cmp    $0x9,%al
  n = 0;
 46f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 474:	77 1f                	ja     495 <atoi+0x35>
 476:	8d 76 00             	lea    0x0(%esi),%esi
 479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 480:	8d 04 80             	lea    (%eax,%eax,4),%eax
 483:	83 c1 01             	add    $0x1,%ecx
 486:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 48a:	0f be 11             	movsbl (%ecx),%edx
 48d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 490:	80 fb 09             	cmp    $0x9,%bl
 493:	76 eb                	jbe    480 <atoi+0x20>
  return n;
}
 495:	5b                   	pop    %ebx
 496:	5d                   	pop    %ebp
 497:	c3                   	ret    
 498:	90                   	nop
 499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	56                   	push   %esi
 4a4:	53                   	push   %ebx
 4a5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4a8:	8b 45 08             	mov    0x8(%ebp),%eax
 4ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4ae:	85 db                	test   %ebx,%ebx
 4b0:	7e 14                	jle    4c6 <memmove+0x26>
 4b2:	31 d2                	xor    %edx,%edx
 4b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 4b8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 4bc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 4bf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 4c2:	39 d3                	cmp    %edx,%ebx
 4c4:	75 f2                	jne    4b8 <memmove+0x18>
  return vdst;
}
 4c6:	5b                   	pop    %ebx
 4c7:	5e                   	pop    %esi
 4c8:	5d                   	pop    %ebp
 4c9:	c3                   	ret    
 4ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004d0 <strcat>:

char *
strcat(char *d,const char *s)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	53                   	push   %ebx
 4d4:	8b 45 08             	mov    0x8(%ebp),%eax
 4d7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *temp = d;
  while (*d)
 4da:	80 38 00             	cmpb   $0x0,(%eax)
 4dd:	89 c2                	mov    %eax,%edx
 4df:	74 28                	je     509 <strcat+0x39>
 4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ++d;
 4e8:	83 c2 01             	add    $0x1,%edx
  while (*d)
 4eb:	80 3a 00             	cmpb   $0x0,(%edx)
 4ee:	75 f8                	jne    4e8 <strcat+0x18>
  while (*s)
 4f0:	0f b6 0b             	movzbl (%ebx),%ecx
 4f3:	84 c9                	test   %cl,%cl
 4f5:	74 19                	je     510 <strcat+0x40>
 4f7:	89 f6                	mov    %esi,%esi
 4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    *d++ = *s++;
 500:	83 c2 01             	add    $0x1,%edx
 503:	83 c3 01             	add    $0x1,%ebx
 506:	88 4a ff             	mov    %cl,-0x1(%edx)
  while (*s)
 509:	0f b6 0b             	movzbl (%ebx),%ecx
 50c:	84 c9                	test   %cl,%cl
 50e:	75 f0                	jne    500 <strcat+0x30>
  *d = 0;
 510:	c6 02 00             	movb   $0x0,(%edx)
  return temp;
}
 513:	5b                   	pop    %ebx
 514:	5d                   	pop    %ebp
 515:	c3                   	ret    
 516:	8d 76 00             	lea    0x0(%esi),%esi
 519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000520 <strncpy>:
char *strncpy(char *s, const char *t, int n)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	56                   	push   %esi
 524:	53                   	push   %ebx
 525:	8b 5d 10             	mov    0x10(%ebp),%ebx
 528:	8b 45 08             	mov    0x8(%ebp),%eax
 52b:	8b 75 0c             	mov    0xc(%ebp),%esi
  int i;
  char *os;
  os = s;
  for (i = 0; i < n; i++)
 52e:	85 db                	test   %ebx,%ebx
 530:	7e 14                	jle    546 <strncpy+0x26>
 532:	31 d2                	xor    %edx,%edx
 534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  {
    s[i] = t[i];
 538:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 53c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
  for (i = 0; i < n; i++)
 53f:	83 c2 01             	add    $0x1,%edx
 542:	39 d3                	cmp    %edx,%ebx
 544:	75 f2                	jne    538 <strncpy+0x18>
  }
  return os;
}
 546:	5b                   	pop    %ebx
 547:	5e                   	pop    %esi
 548:	5d                   	pop    %ebp
 549:	c3                   	ret    

0000054a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 54a:	b8 01 00 00 00       	mov    $0x1,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <exit>:
SYSCALL(exit)
 552:	b8 02 00 00 00       	mov    $0x2,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <wait>:
SYSCALL(wait)
 55a:	b8 03 00 00 00       	mov    $0x3,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <pipe>:
SYSCALL(pipe)
 562:	b8 04 00 00 00       	mov    $0x4,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <read>:
SYSCALL(read)
 56a:	b8 05 00 00 00       	mov    $0x5,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <write>:
SYSCALL(write)
 572:	b8 10 00 00 00       	mov    $0x10,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <close>:
SYSCALL(close)
 57a:	b8 15 00 00 00       	mov    $0x15,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <kill>:
SYSCALL(kill)
 582:	b8 06 00 00 00       	mov    $0x6,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <exec>:
SYSCALL(exec)
 58a:	b8 07 00 00 00       	mov    $0x7,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <open>:
SYSCALL(open)
 592:	b8 0f 00 00 00       	mov    $0xf,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <mknod>:
SYSCALL(mknod)
 59a:	b8 11 00 00 00       	mov    $0x11,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <unlink>:
SYSCALL(unlink)
 5a2:	b8 12 00 00 00       	mov    $0x12,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <fstat>:
SYSCALL(fstat)
 5aa:	b8 08 00 00 00       	mov    $0x8,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <link>:
SYSCALL(link)
 5b2:	b8 13 00 00 00       	mov    $0x13,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <mkdir>:
SYSCALL(mkdir)
 5ba:	b8 14 00 00 00       	mov    $0x14,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <chdir>:
SYSCALL(chdir)
 5c2:	b8 09 00 00 00       	mov    $0x9,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <dup>:
SYSCALL(dup)
 5ca:	b8 0a 00 00 00       	mov    $0xa,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <getpid>:
SYSCALL(getpid)
 5d2:	b8 0b 00 00 00       	mov    $0xb,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <sbrk>:
SYSCALL(sbrk)
 5da:	b8 0c 00 00 00       	mov    $0xc,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <sleep>:
SYSCALL(sleep)
 5e2:	b8 0d 00 00 00       	mov    $0xd,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <uptime>:
SYSCALL(uptime)
 5ea:	b8 0e 00 00 00       	mov    $0xe,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    
 5f2:	66 90                	xchg   %ax,%ax
 5f4:	66 90                	xchg   %ax,%ax
 5f6:	66 90                	xchg   %ax,%ax
 5f8:	66 90                	xchg   %ax,%ax
 5fa:	66 90                	xchg   %ax,%ax
 5fc:	66 90                	xchg   %ax,%ax
 5fe:	66 90                	xchg   %ax,%ax

00000600 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	56                   	push   %esi
 605:	53                   	push   %ebx
 606:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 609:	85 d2                	test   %edx,%edx
{
 60b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 60e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 610:	79 76                	jns    688 <printint+0x88>
 612:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 616:	74 70                	je     688 <printint+0x88>
    x = -xx;
 618:	f7 d8                	neg    %eax
    neg = 1;
 61a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 621:	31 f6                	xor    %esi,%esi
 623:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 626:	eb 0a                	jmp    632 <printint+0x32>
 628:	90                   	nop
 629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 630:	89 fe                	mov    %edi,%esi
 632:	31 d2                	xor    %edx,%edx
 634:	8d 7e 01             	lea    0x1(%esi),%edi
 637:	f7 f1                	div    %ecx
 639:	0f b6 92 0c 0b 00 00 	movzbl 0xb0c(%edx),%edx
  }while((x /= base) != 0);
 640:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 642:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 645:	75 e9                	jne    630 <printint+0x30>
  if(neg)
 647:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 64a:	85 c0                	test   %eax,%eax
 64c:	74 08                	je     656 <printint+0x56>
    buf[i++] = '-';
 64e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 653:	8d 7e 02             	lea    0x2(%esi),%edi
 656:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 65a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 65d:	8d 76 00             	lea    0x0(%esi),%esi
 660:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 663:	83 ec 04             	sub    $0x4,%esp
 666:	83 ee 01             	sub    $0x1,%esi
 669:	6a 01                	push   $0x1
 66b:	53                   	push   %ebx
 66c:	57                   	push   %edi
 66d:	88 45 d7             	mov    %al,-0x29(%ebp)
 670:	e8 fd fe ff ff       	call   572 <write>

  while(--i >= 0)
 675:	83 c4 10             	add    $0x10,%esp
 678:	39 de                	cmp    %ebx,%esi
 67a:	75 e4                	jne    660 <printint+0x60>
    putc(fd, buf[i]);
}
 67c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 67f:	5b                   	pop    %ebx
 680:	5e                   	pop    %esi
 681:	5f                   	pop    %edi
 682:	5d                   	pop    %ebp
 683:	c3                   	ret    
 684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 688:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 68f:	eb 90                	jmp    621 <printint+0x21>
 691:	eb 0d                	jmp    6a0 <printf>
 693:	90                   	nop
 694:	90                   	nop
 695:	90                   	nop
 696:	90                   	nop
 697:	90                   	nop
 698:	90                   	nop
 699:	90                   	nop
 69a:	90                   	nop
 69b:	90                   	nop
 69c:	90                   	nop
 69d:	90                   	nop
 69e:	90                   	nop
 69f:	90                   	nop

000006a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	57                   	push   %edi
 6a4:	56                   	push   %esi
 6a5:	53                   	push   %ebx
 6a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6a9:	8b 75 0c             	mov    0xc(%ebp),%esi
 6ac:	0f b6 1e             	movzbl (%esi),%ebx
 6af:	84 db                	test   %bl,%bl
 6b1:	0f 84 b3 00 00 00    	je     76a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 6b7:	8d 45 10             	lea    0x10(%ebp),%eax
 6ba:	83 c6 01             	add    $0x1,%esi
  state = 0;
 6bd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 6bf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 6c2:	eb 2f                	jmp    6f3 <printf+0x53>
 6c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6c8:	83 f8 25             	cmp    $0x25,%eax
 6cb:	0f 84 a7 00 00 00    	je     778 <printf+0xd8>
  write(fd, &c, 1);
 6d1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 6d4:	83 ec 04             	sub    $0x4,%esp
 6d7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 6da:	6a 01                	push   $0x1
 6dc:	50                   	push   %eax
 6dd:	ff 75 08             	pushl  0x8(%ebp)
 6e0:	e8 8d fe ff ff       	call   572 <write>
 6e5:	83 c4 10             	add    $0x10,%esp
 6e8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 6eb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 6ef:	84 db                	test   %bl,%bl
 6f1:	74 77                	je     76a <printf+0xca>
    if(state == 0){
 6f3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 6f5:	0f be cb             	movsbl %bl,%ecx
 6f8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 6fb:	74 cb                	je     6c8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 6fd:	83 ff 25             	cmp    $0x25,%edi
 700:	75 e6                	jne    6e8 <printf+0x48>
      if(c == 'd'){
 702:	83 f8 64             	cmp    $0x64,%eax
 705:	0f 84 05 01 00 00    	je     810 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 70b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 711:	83 f9 70             	cmp    $0x70,%ecx
 714:	74 72                	je     788 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 716:	83 f8 73             	cmp    $0x73,%eax
 719:	0f 84 99 00 00 00    	je     7b8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 71f:	83 f8 63             	cmp    $0x63,%eax
 722:	0f 84 08 01 00 00    	je     830 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 728:	83 f8 25             	cmp    $0x25,%eax
 72b:	0f 84 ef 00 00 00    	je     820 <printf+0x180>
  write(fd, &c, 1);
 731:	8d 45 e7             	lea    -0x19(%ebp),%eax
 734:	83 ec 04             	sub    $0x4,%esp
 737:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 73b:	6a 01                	push   $0x1
 73d:	50                   	push   %eax
 73e:	ff 75 08             	pushl  0x8(%ebp)
 741:	e8 2c fe ff ff       	call   572 <write>
 746:	83 c4 0c             	add    $0xc,%esp
 749:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 74c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 74f:	6a 01                	push   $0x1
 751:	50                   	push   %eax
 752:	ff 75 08             	pushl  0x8(%ebp)
 755:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 758:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 75a:	e8 13 fe ff ff       	call   572 <write>
  for(i = 0; fmt[i]; i++){
 75f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 763:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 766:	84 db                	test   %bl,%bl
 768:	75 89                	jne    6f3 <printf+0x53>
    }
  }
}
 76a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 76d:	5b                   	pop    %ebx
 76e:	5e                   	pop    %esi
 76f:	5f                   	pop    %edi
 770:	5d                   	pop    %ebp
 771:	c3                   	ret    
 772:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 778:	bf 25 00 00 00       	mov    $0x25,%edi
 77d:	e9 66 ff ff ff       	jmp    6e8 <printf+0x48>
 782:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 788:	83 ec 0c             	sub    $0xc,%esp
 78b:	b9 10 00 00 00       	mov    $0x10,%ecx
 790:	6a 00                	push   $0x0
 792:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 795:	8b 45 08             	mov    0x8(%ebp),%eax
 798:	8b 17                	mov    (%edi),%edx
 79a:	e8 61 fe ff ff       	call   600 <printint>
        ap++;
 79f:	89 f8                	mov    %edi,%eax
 7a1:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7a4:	31 ff                	xor    %edi,%edi
        ap++;
 7a6:	83 c0 04             	add    $0x4,%eax
 7a9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 7ac:	e9 37 ff ff ff       	jmp    6e8 <printf+0x48>
 7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7b8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 7bb:	8b 08                	mov    (%eax),%ecx
        ap++;
 7bd:	83 c0 04             	add    $0x4,%eax
 7c0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 7c3:	85 c9                	test   %ecx,%ecx
 7c5:	0f 84 8e 00 00 00    	je     859 <printf+0x1b9>
        while(*s != 0){
 7cb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 7ce:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 7d0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 7d2:	84 c0                	test   %al,%al
 7d4:	0f 84 0e ff ff ff    	je     6e8 <printf+0x48>
 7da:	89 75 d0             	mov    %esi,-0x30(%ebp)
 7dd:	89 de                	mov    %ebx,%esi
 7df:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7e2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 7e5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7e8:	83 ec 04             	sub    $0x4,%esp
          s++;
 7eb:	83 c6 01             	add    $0x1,%esi
 7ee:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 7f1:	6a 01                	push   $0x1
 7f3:	57                   	push   %edi
 7f4:	53                   	push   %ebx
 7f5:	e8 78 fd ff ff       	call   572 <write>
        while(*s != 0){
 7fa:	0f b6 06             	movzbl (%esi),%eax
 7fd:	83 c4 10             	add    $0x10,%esp
 800:	84 c0                	test   %al,%al
 802:	75 e4                	jne    7e8 <printf+0x148>
 804:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 807:	31 ff                	xor    %edi,%edi
 809:	e9 da fe ff ff       	jmp    6e8 <printf+0x48>
 80e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 810:	83 ec 0c             	sub    $0xc,%esp
 813:	b9 0a 00 00 00       	mov    $0xa,%ecx
 818:	6a 01                	push   $0x1
 81a:	e9 73 ff ff ff       	jmp    792 <printf+0xf2>
 81f:	90                   	nop
  write(fd, &c, 1);
 820:	83 ec 04             	sub    $0x4,%esp
 823:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 826:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 829:	6a 01                	push   $0x1
 82b:	e9 21 ff ff ff       	jmp    751 <printf+0xb1>
        putc(fd, *ap);
 830:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 833:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 836:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 838:	6a 01                	push   $0x1
        ap++;
 83a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 83d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 840:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 843:	50                   	push   %eax
 844:	ff 75 08             	pushl  0x8(%ebp)
 847:	e8 26 fd ff ff       	call   572 <write>
        ap++;
 84c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 84f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 852:	31 ff                	xor    %edi,%edi
 854:	e9 8f fe ff ff       	jmp    6e8 <printf+0x48>
          s = "(null)";
 859:	bb 04 0b 00 00       	mov    $0xb04,%ebx
        while(*s != 0){
 85e:	b8 28 00 00 00       	mov    $0x28,%eax
 863:	e9 72 ff ff ff       	jmp    7da <printf+0x13a>
 868:	66 90                	xchg   %ax,%ax
 86a:	66 90                	xchg   %ax,%ax
 86c:	66 90                	xchg   %ax,%ax
 86e:	66 90                	xchg   %ax,%ax

00000870 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 870:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 871:	a1 08 0e 00 00       	mov    0xe08,%eax
{
 876:	89 e5                	mov    %esp,%ebp
 878:	57                   	push   %edi
 879:	56                   	push   %esi
 87a:	53                   	push   %ebx
 87b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 87e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 881:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 888:	39 c8                	cmp    %ecx,%eax
 88a:	8b 10                	mov    (%eax),%edx
 88c:	73 32                	jae    8c0 <free+0x50>
 88e:	39 d1                	cmp    %edx,%ecx
 890:	72 04                	jb     896 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 892:	39 d0                	cmp    %edx,%eax
 894:	72 32                	jb     8c8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 896:	8b 73 fc             	mov    -0x4(%ebx),%esi
 899:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 89c:	39 fa                	cmp    %edi,%edx
 89e:	74 30                	je     8d0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 8a0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8a3:	8b 50 04             	mov    0x4(%eax),%edx
 8a6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8a9:	39 f1                	cmp    %esi,%ecx
 8ab:	74 3a                	je     8e7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 8ad:	89 08                	mov    %ecx,(%eax)
  freep = p;
 8af:	a3 08 0e 00 00       	mov    %eax,0xe08
}
 8b4:	5b                   	pop    %ebx
 8b5:	5e                   	pop    %esi
 8b6:	5f                   	pop    %edi
 8b7:	5d                   	pop    %ebp
 8b8:	c3                   	ret    
 8b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8c0:	39 d0                	cmp    %edx,%eax
 8c2:	72 04                	jb     8c8 <free+0x58>
 8c4:	39 d1                	cmp    %edx,%ecx
 8c6:	72 ce                	jb     896 <free+0x26>
{
 8c8:	89 d0                	mov    %edx,%eax
 8ca:	eb bc                	jmp    888 <free+0x18>
 8cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 8d0:	03 72 04             	add    0x4(%edx),%esi
 8d3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8d6:	8b 10                	mov    (%eax),%edx
 8d8:	8b 12                	mov    (%edx),%edx
 8da:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8dd:	8b 50 04             	mov    0x4(%eax),%edx
 8e0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8e3:	39 f1                	cmp    %esi,%ecx
 8e5:	75 c6                	jne    8ad <free+0x3d>
    p->s.size += bp->s.size;
 8e7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 8ea:	a3 08 0e 00 00       	mov    %eax,0xe08
    p->s.size += bp->s.size;
 8ef:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8f2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8f5:	89 10                	mov    %edx,(%eax)
}
 8f7:	5b                   	pop    %ebx
 8f8:	5e                   	pop    %esi
 8f9:	5f                   	pop    %edi
 8fa:	5d                   	pop    %ebp
 8fb:	c3                   	ret    
 8fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000900 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 900:	55                   	push   %ebp
 901:	89 e5                	mov    %esp,%ebp
 903:	57                   	push   %edi
 904:	56                   	push   %esi
 905:	53                   	push   %ebx
 906:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 909:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 90c:	8b 15 08 0e 00 00    	mov    0xe08,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 912:	8d 78 07             	lea    0x7(%eax),%edi
 915:	c1 ef 03             	shr    $0x3,%edi
 918:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 91b:	85 d2                	test   %edx,%edx
 91d:	0f 84 9d 00 00 00    	je     9c0 <malloc+0xc0>
 923:	8b 02                	mov    (%edx),%eax
 925:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 928:	39 cf                	cmp    %ecx,%edi
 92a:	76 6c                	jbe    998 <malloc+0x98>
 92c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 932:	bb 00 10 00 00       	mov    $0x1000,%ebx
 937:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 93a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 941:	eb 0e                	jmp    951 <malloc+0x51>
 943:	90                   	nop
 944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 948:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 94a:	8b 48 04             	mov    0x4(%eax),%ecx
 94d:	39 f9                	cmp    %edi,%ecx
 94f:	73 47                	jae    998 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 951:	39 05 08 0e 00 00    	cmp    %eax,0xe08
 957:	89 c2                	mov    %eax,%edx
 959:	75 ed                	jne    948 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 95b:	83 ec 0c             	sub    $0xc,%esp
 95e:	56                   	push   %esi
 95f:	e8 76 fc ff ff       	call   5da <sbrk>
  if(p == (char*)-1)
 964:	83 c4 10             	add    $0x10,%esp
 967:	83 f8 ff             	cmp    $0xffffffff,%eax
 96a:	74 1c                	je     988 <malloc+0x88>
  hp->s.size = nu;
 96c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 96f:	83 ec 0c             	sub    $0xc,%esp
 972:	83 c0 08             	add    $0x8,%eax
 975:	50                   	push   %eax
 976:	e8 f5 fe ff ff       	call   870 <free>
  return freep;
 97b:	8b 15 08 0e 00 00    	mov    0xe08,%edx
      if((p = morecore(nunits)) == 0)
 981:	83 c4 10             	add    $0x10,%esp
 984:	85 d2                	test   %edx,%edx
 986:	75 c0                	jne    948 <malloc+0x48>
        return 0;
  }
}
 988:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 98b:	31 c0                	xor    %eax,%eax
}
 98d:	5b                   	pop    %ebx
 98e:	5e                   	pop    %esi
 98f:	5f                   	pop    %edi
 990:	5d                   	pop    %ebp
 991:	c3                   	ret    
 992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 998:	39 cf                	cmp    %ecx,%edi
 99a:	74 54                	je     9f0 <malloc+0xf0>
        p->s.size -= nunits;
 99c:	29 f9                	sub    %edi,%ecx
 99e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9a1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9a4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 9a7:	89 15 08 0e 00 00    	mov    %edx,0xe08
}
 9ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9b0:	83 c0 08             	add    $0x8,%eax
}
 9b3:	5b                   	pop    %ebx
 9b4:	5e                   	pop    %esi
 9b5:	5f                   	pop    %edi
 9b6:	5d                   	pop    %ebp
 9b7:	c3                   	ret    
 9b8:	90                   	nop
 9b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 9c0:	c7 05 08 0e 00 00 0c 	movl   $0xe0c,0xe08
 9c7:	0e 00 00 
 9ca:	c7 05 0c 0e 00 00 0c 	movl   $0xe0c,0xe0c
 9d1:	0e 00 00 
    base.s.size = 0;
 9d4:	b8 0c 0e 00 00       	mov    $0xe0c,%eax
 9d9:	c7 05 10 0e 00 00 00 	movl   $0x0,0xe10
 9e0:	00 00 00 
 9e3:	e9 44 ff ff ff       	jmp    92c <malloc+0x2c>
 9e8:	90                   	nop
 9e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 9f0:	8b 08                	mov    (%eax),%ecx
 9f2:	89 0a                	mov    %ecx,(%edx)
 9f4:	eb b1                	jmp    9a7 <malloc+0xa7>
