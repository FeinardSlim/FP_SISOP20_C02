
_cmp:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
int space = 0;

void check(int file1,int file2);

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
  11:	83 ec 08             	sub    $0x8,%esp
    if(argc < 3)
  14:	83 39 02             	cmpl   $0x2,(%ecx)
{
  17:	8b 59 04             	mov    0x4(%ecx),%ebx
    if(argc < 3)
  1a:	7f 13                	jg     2f <main+0x2f>
    {
        printf(2, "Usage: cmp 2 files...\n");
  1c:	50                   	push   %eax
  1d:	50                   	push   %eax
  1e:	68 09 0a 00 00       	push   $0xa09
  23:	6a 02                	push   $0x2
  25:	e8 26 06 00 00       	call   650 <printf>
        exit();
  2a:	e8 d3 04 00 00       	call   502 <exit>
    }
    else
    {
        int file1, file2;
        if ((file1 = open(argv[1], 0)) < 0)
  2f:	57                   	push   %edi
  30:	57                   	push   %edi
  31:	6a 00                	push   $0x0
  33:	ff 73 04             	pushl  0x4(%ebx)
  36:	e8 07 05 00 00       	call   542 <open>
  3b:	83 c4 10             	add    $0x10,%esp
  3e:	85 c0                	test   %eax,%eax
  40:	89 c6                	mov    %eax,%esi
  42:	78 33                	js     77 <main+0x77>
        { // Error handling : cannot read file 1
            printf(1, "Failed to read files %s\n", argv[1]);
            exit();
        }
        if ((file2 = open(argv[2], 0)) < 0)
  44:	51                   	push   %ecx
  45:	51                   	push   %ecx
  46:	6a 00                	push   $0x0
  48:	ff 73 08             	pushl  0x8(%ebx)
  4b:	e8 f2 04 00 00       	call   542 <open>
  50:	83 c4 10             	add    $0x10,%esp
  53:	85 c0                	test   %eax,%eax
  55:	89 c7                	mov    %eax,%edi
  57:	78 33                	js     8c <main+0x8c>
        { // Error handling : cannot read file 2
            printf(1, "failed to read %s\n", argv[2]);
            exit();
        }
        check(file1,file2);
  59:	50                   	push   %eax
  5a:	50                   	push   %eax
  5b:	57                   	push   %edi
  5c:	56                   	push   %esi
  5d:	e8 4e 00 00 00       	call   b0 <check>
        close(file1);
  62:	89 34 24             	mov    %esi,(%esp)
  65:	e8 c0 04 00 00       	call   52a <close>
        close(file2);
  6a:	89 3c 24             	mov    %edi,(%esp)
  6d:	e8 b8 04 00 00       	call   52a <close>
        exit();
  72:	e8 8b 04 00 00       	call   502 <exit>
            printf(1, "Failed to read files %s\n", argv[1]);
  77:	56                   	push   %esi
  78:	ff 73 04             	pushl  0x4(%ebx)
  7b:	68 20 0a 00 00       	push   $0xa20
  80:	6a 01                	push   $0x1
  82:	e8 c9 05 00 00       	call   650 <printf>
            exit();
  87:	e8 76 04 00 00       	call   502 <exit>
            printf(1, "failed to read %s\n", argv[2]);
  8c:	52                   	push   %edx
  8d:	ff 73 08             	pushl  0x8(%ebx)
  90:	68 39 0a 00 00       	push   $0xa39
  95:	6a 01                	push   $0x1
  97:	e8 b4 05 00 00       	call   650 <printf>
            exit();
  9c:	e8 61 04 00 00       	call   502 <exit>
  a1:	66 90                	xchg   %ax,%ax
  a3:	66 90                	xchg   %ax,%ax
  a5:	66 90                	xchg   %ax,%ax
  a7:	66 90                	xchg   %ax,%ax
  a9:	66 90                	xchg   %ax,%ax
  ab:	66 90                	xchg   %ax,%ax
  ad:	66 90                	xchg   %ax,%ax
  af:	90                   	nop

000000b0 <check>:
    }
}

void check(int file1,int file2)
{
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	57                   	push   %edi
  b4:	56                   	push   %esi
  b5:	53                   	push   %ebx
    int n = 0;
    int m = 0;
    int totalbyte = 0;
    struct stat st;
    fstat(file1,&st);
  b6:	8d 5d d4             	lea    -0x2c(%ebp),%ebx
{
  b9:	83 ec 44             	sub    $0x44,%esp
    fstat(file1,&st);
  bc:	53                   	push   %ebx
  bd:	ff 75 08             	pushl  0x8(%ebp)
  c0:	e8 95 04 00 00       	call   55a <fstat>
    int size = st.size;
  c5:	8b 75 e4             	mov    -0x1c(%ebp),%esi
    char buf1[st.size];
  c8:	83 c4 10             	add    $0x10,%esp
  cb:	8d 46 0f             	lea    0xf(%esi),%eax
    int size = st.size;
  ce:	89 75 c0             	mov    %esi,-0x40(%ebp)
    char buf1[st.size];
  d1:	83 e0 f0             	and    $0xfffffff0,%eax
  d4:	29 c4                	sub    %eax,%esp
  d6:	89 e7                	mov    %esp,%edi
    fstat(file2,&st);
  d8:	83 ec 08             	sub    $0x8,%esp
  db:	53                   	push   %ebx
  dc:	ff 75 0c             	pushl  0xc(%ebp)
  df:	e8 76 04 00 00       	call   55a <fstat>
    int size2 = st.size; 
  e4:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
    char buf2[st.size];
  e7:	83 c4 10             	add    $0x10,%esp
  ea:	8d 41 0f             	lea    0xf(%ecx),%eax
    int size2 = st.size; 
  ed:	89 4d bc             	mov    %ecx,-0x44(%ebp)
    char buf2[st.size];
  f0:	83 e0 f0             	and    $0xfffffff0,%eax
  f3:	29 c4                	sub    %eax,%esp
  f5:	39 ce                	cmp    %ecx,%esi
  f7:	0f 4d ce             	cmovge %esi,%ecx
  fa:	89 65 c4             	mov    %esp,-0x3c(%ebp)
  fd:	31 db                	xor    %ebx,%ebx
  ff:	89 4d b8             	mov    %ecx,-0x48(%ebp)
 102:	eb 4e                	jmp    152 <check+0xa2>
 104:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

    if(size > size2)    totalbyte = size;
    else                totalbyte = size2;

    while (((n = read(file1, buf1, sizeof(buf1))) > 0) && ((m = read(file2, buf2, sizeof(buf2))) > 0))
 108:	83 ec 04             	sub    $0x4,%esp
 10b:	ff 75 bc             	pushl  -0x44(%ebp)
 10e:	ff 75 c4             	pushl  -0x3c(%ebp)
 111:	ff 75 0c             	pushl  0xc(%ebp)
 114:	e8 01 04 00 00       	call   51a <read>
 119:	83 c4 10             	add    $0x10,%esp
 11c:	85 c0                	test   %eax,%eax
 11e:	89 c3                	mov    %eax,%ebx
 120:	7e 4f                	jle    171 <check+0xc1>
    {
        if (write(1, buf1, n) != n)
 122:	83 ec 04             	sub    $0x4,%esp
 125:	56                   	push   %esi
 126:	57                   	push   %edi
 127:	6a 01                	push   $0x1
 129:	e8 f4 03 00 00       	call   522 <write>
 12e:	83 c4 10             	add    $0x10,%esp
 131:	39 f0                	cmp    %esi,%eax
 133:	0f 85 b9 00 00 00    	jne    1f2 <check+0x142>
        {
            printf(1, "cat: write error buf1\n");
            exit();
        } 
        if (write(1, buf2, m) != m)
 139:	83 ec 04             	sub    $0x4,%esp
 13c:	53                   	push   %ebx
 13d:	ff 75 c4             	pushl  -0x3c(%ebp)
 140:	6a 01                	push   $0x1
 142:	e8 db 03 00 00       	call   522 <write>
 147:	83 c4 10             	add    $0x10,%esp
 14a:	39 d8                	cmp    %ebx,%eax
 14c:	0f 85 b4 00 00 00    	jne    206 <check+0x156>
    while (((n = read(file1, buf1, sizeof(buf1))) > 0) && ((m = read(file2, buf2, sizeof(buf2))) > 0))
 152:	83 ec 04             	sub    $0x4,%esp
 155:	ff 75 c0             	pushl  -0x40(%ebp)
 158:	57                   	push   %edi
 159:	ff 75 08             	pushl  0x8(%ebp)
 15c:	e8 b9 03 00 00       	call   51a <read>
 161:	83 c4 10             	add    $0x10,%esp
 164:	83 f8 00             	cmp    $0x0,%eax
 167:	89 c6                	mov    %eax,%esi
 169:	7f 9d                	jg     108 <check+0x58>
        {
            printf(1, "cat: write error buf2\n");
            exit();
        }
    }
    if (n < 0)
 16b:	0f 85 a9 00 00 00    	jne    21a <check+0x16a>
    {
        printf(1, "cat: read error\n");
        exit();
    }

    if (m < 0)
 171:	85 db                	test   %ebx,%ebx
 173:	0f 88 a1 00 00 00    	js     21a <check+0x16a>
    }
    
    int loop = 0;
    int byte = -1;
    int baris = 0;
    while (loop < totalbyte)
 179:	8b 45 b8             	mov    -0x48(%ebp),%eax
 17c:	85 c0                	test   %eax,%eax
 17e:	7e 55                	jle    1d5 <check+0x125>
    {
        byte = 0;
        if(buf1[loop] != buf2[loop])
 180:	8b 75 c4             	mov    -0x3c(%ebp),%esi
 183:	0f b6 17             	movzbl (%edi),%edx
 186:	3a 16                	cmp    (%esi),%dl
 188:	75 5f                	jne    1e9 <check+0x139>
    int baris = 0;
 18a:	31 db                	xor    %ebx,%ebx
    int loop = 0;
 18c:	31 c0                	xor    %eax,%eax
 18e:	eb 0d                	jmp    19d <check+0xed>
        if(buf1[loop] != buf2[loop])
 190:	0f b6 54 07 01       	movzbl 0x1(%edi,%eax,1),%edx
 195:	3a 54 06 01          	cmp    0x1(%esi,%eax,1),%dl
 199:	75 35                	jne    1d0 <check+0x120>
 19b:	89 c8                	mov    %ecx,%eax
            break;
        }

        if(buf1[loop] == '\n')
        {
            baris++;
 19d:	80 fa 0a             	cmp    $0xa,%dl
        }
        loop++;
 1a0:	8d 48 01             	lea    0x1(%eax),%ecx
            baris++;
 1a3:	0f 94 c2             	sete   %dl
 1a6:	0f b6 d2             	movzbl %dl,%edx
 1a9:	01 d3                	add    %edx,%ebx
    while (loop < totalbyte)
 1ab:	39 4d b8             	cmp    %ecx,-0x48(%ebp)
 1ae:	75 e0                	jne    190 <check+0xe0>
 1b0:	b8 01 00 00 00       	mov    $0x1,%eax
    if(byte == -1){
        printf(2,"File matched\n");
        exit();
    }
    else{
        printf(2,"Error on %d line %d",byte+1,baris);
 1b5:	53                   	push   %ebx
 1b6:	50                   	push   %eax
 1b7:	68 f5 09 00 00       	push   $0x9f5
 1bc:	6a 02                	push   $0x2
 1be:	e8 8d 04 00 00       	call   650 <printf>
    }
}
 1c3:	83 c4 10             	add    $0x10,%esp
 1c6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1c9:	5b                   	pop    %ebx
 1ca:	5e                   	pop    %esi
 1cb:	5f                   	pop    %edi
 1cc:	5d                   	pop    %ebp
 1cd:	c3                   	ret    
 1ce:	66 90                	xchg   %ax,%ax
 1d0:	83 c0 02             	add    $0x2,%eax
 1d3:	eb e0                	jmp    1b5 <check+0x105>
        printf(2,"File matched\n");
 1d5:	83 ec 08             	sub    $0x8,%esp
 1d8:	68 e7 09 00 00       	push   $0x9e7
 1dd:	6a 02                	push   $0x2
 1df:	e8 6c 04 00 00       	call   650 <printf>
        exit();
 1e4:	e8 19 03 00 00       	call   502 <exit>
        if(buf1[loop] != buf2[loop])
 1e9:	b8 01 00 00 00       	mov    $0x1,%eax
    int baris = 0;
 1ee:	31 db                	xor    %ebx,%ebx
 1f0:	eb c3                	jmp    1b5 <check+0x105>
            printf(1, "cat: write error buf1\n");
 1f2:	83 ec 08             	sub    $0x8,%esp
 1f5:	68 a8 09 00 00       	push   $0x9a8
 1fa:	6a 01                	push   $0x1
 1fc:	e8 4f 04 00 00       	call   650 <printf>
            exit();
 201:	e8 fc 02 00 00       	call   502 <exit>
            printf(1, "cat: write error buf2\n");
 206:	83 ec 08             	sub    $0x8,%esp
 209:	68 bf 09 00 00       	push   $0x9bf
 20e:	6a 01                	push   $0x1
 210:	e8 3b 04 00 00       	call   650 <printf>
            exit();
 215:	e8 e8 02 00 00       	call   502 <exit>
        printf(1, "cat: read error\n");
 21a:	52                   	push   %edx
 21b:	52                   	push   %edx
 21c:	68 d6 09 00 00       	push   $0x9d6
 221:	6a 01                	push   $0x1
 223:	e8 28 04 00 00       	call   650 <printf>
        exit();
 228:	e8 d5 02 00 00       	call   502 <exit>
 22d:	66 90                	xchg   %ax,%ax
 22f:	90                   	nop

00000230 <strcpy>:
#include "x86.h"
#include "fcntl.h"

char*
strcpy(char *s, const char *t)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	53                   	push   %ebx
 234:	8b 45 08             	mov    0x8(%ebp),%eax
 237:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 23a:	89 c2                	mov    %eax,%edx
 23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 240:	83 c1 01             	add    $0x1,%ecx
 243:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 247:	83 c2 01             	add    $0x1,%edx
 24a:	84 db                	test   %bl,%bl
 24c:	88 5a ff             	mov    %bl,-0x1(%edx)
 24f:	75 ef                	jne    240 <strcpy+0x10>
    ;
  return os;
}
 251:	5b                   	pop    %ebx
 252:	5d                   	pop    %ebp
 253:	c3                   	ret    
 254:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 25a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000260 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	53                   	push   %ebx
 264:	8b 55 08             	mov    0x8(%ebp),%edx
 267:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 26a:	0f b6 02             	movzbl (%edx),%eax
 26d:	0f b6 19             	movzbl (%ecx),%ebx
 270:	84 c0                	test   %al,%al
 272:	75 1c                	jne    290 <strcmp+0x30>
 274:	eb 2a                	jmp    2a0 <strcmp+0x40>
 276:	8d 76 00             	lea    0x0(%esi),%esi
 279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 280:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 283:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 286:	83 c1 01             	add    $0x1,%ecx
 289:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 28c:	84 c0                	test   %al,%al
 28e:	74 10                	je     2a0 <strcmp+0x40>
 290:	38 d8                	cmp    %bl,%al
 292:	74 ec                	je     280 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 294:	29 d8                	sub    %ebx,%eax
}
 296:	5b                   	pop    %ebx
 297:	5d                   	pop    %ebp
 298:	c3                   	ret    
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 2a2:	29 d8                	sub    %ebx,%eax
}
 2a4:	5b                   	pop    %ebx
 2a5:	5d                   	pop    %ebp
 2a6:	c3                   	ret    
 2a7:	89 f6                	mov    %esi,%esi
 2a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002b0 <strlen>:

uint
strlen(const char *s)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 2b6:	80 39 00             	cmpb   $0x0,(%ecx)
 2b9:	74 15                	je     2d0 <strlen+0x20>
 2bb:	31 d2                	xor    %edx,%edx
 2bd:	8d 76 00             	lea    0x0(%esi),%esi
 2c0:	83 c2 01             	add    $0x1,%edx
 2c3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 2c7:	89 d0                	mov    %edx,%eax
 2c9:	75 f5                	jne    2c0 <strlen+0x10>
    ;
  return n;
}
 2cb:	5d                   	pop    %ebp
 2cc:	c3                   	ret    
 2cd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 2d0:	31 c0                	xor    %eax,%eax
}
 2d2:	5d                   	pop    %ebp
 2d3:	c3                   	ret    
 2d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	57                   	push   %edi
 2e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 2ed:	89 d7                	mov    %edx,%edi
 2ef:	fc                   	cld    
 2f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2f2:	89 d0                	mov    %edx,%eax
 2f4:	5f                   	pop    %edi
 2f5:	5d                   	pop    %ebp
 2f6:	c3                   	ret    
 2f7:	89 f6                	mov    %esi,%esi
 2f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000300 <strchr>:

char*
strchr(const char *s, char c)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	53                   	push   %ebx
 304:	8b 45 08             	mov    0x8(%ebp),%eax
 307:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 30a:	0f b6 10             	movzbl (%eax),%edx
 30d:	84 d2                	test   %dl,%dl
 30f:	74 1d                	je     32e <strchr+0x2e>
    if(*s == c)
 311:	38 d3                	cmp    %dl,%bl
 313:	89 d9                	mov    %ebx,%ecx
 315:	75 0d                	jne    324 <strchr+0x24>
 317:	eb 17                	jmp    330 <strchr+0x30>
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 320:	38 ca                	cmp    %cl,%dl
 322:	74 0c                	je     330 <strchr+0x30>
  for(; *s; s++)
 324:	83 c0 01             	add    $0x1,%eax
 327:	0f b6 10             	movzbl (%eax),%edx
 32a:	84 d2                	test   %dl,%dl
 32c:	75 f2                	jne    320 <strchr+0x20>
      return (char*)s;
  return 0;
 32e:	31 c0                	xor    %eax,%eax
}
 330:	5b                   	pop    %ebx
 331:	5d                   	pop    %ebp
 332:	c3                   	ret    
 333:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000340 <gets>:

char*
gets(char *buf, int max)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	56                   	push   %esi
 345:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 346:	31 f6                	xor    %esi,%esi
 348:	89 f3                	mov    %esi,%ebx
{
 34a:	83 ec 1c             	sub    $0x1c,%esp
 34d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 350:	eb 2f                	jmp    381 <gets+0x41>
 352:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 358:	8d 45 e7             	lea    -0x19(%ebp),%eax
 35b:	83 ec 04             	sub    $0x4,%esp
 35e:	6a 01                	push   $0x1
 360:	50                   	push   %eax
 361:	6a 00                	push   $0x0
 363:	e8 b2 01 00 00       	call   51a <read>
    if(cc < 1)
 368:	83 c4 10             	add    $0x10,%esp
 36b:	85 c0                	test   %eax,%eax
 36d:	7e 1c                	jle    38b <gets+0x4b>
      break;
    buf[i++] = c;
 36f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 373:	83 c7 01             	add    $0x1,%edi
 376:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 379:	3c 0a                	cmp    $0xa,%al
 37b:	74 23                	je     3a0 <gets+0x60>
 37d:	3c 0d                	cmp    $0xd,%al
 37f:	74 1f                	je     3a0 <gets+0x60>
  for(i=0; i+1 < max; ){
 381:	83 c3 01             	add    $0x1,%ebx
 384:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 387:	89 fe                	mov    %edi,%esi
 389:	7c cd                	jl     358 <gets+0x18>
 38b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 38d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 390:	c6 03 00             	movb   $0x0,(%ebx)
}
 393:	8d 65 f4             	lea    -0xc(%ebp),%esp
 396:	5b                   	pop    %ebx
 397:	5e                   	pop    %esi
 398:	5f                   	pop    %edi
 399:	5d                   	pop    %ebp
 39a:	c3                   	ret    
 39b:	90                   	nop
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3a0:	8b 75 08             	mov    0x8(%ebp),%esi
 3a3:	8b 45 08             	mov    0x8(%ebp),%eax
 3a6:	01 de                	add    %ebx,%esi
 3a8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 3aa:	c6 03 00             	movb   $0x0,(%ebx)
}
 3ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3b0:	5b                   	pop    %ebx
 3b1:	5e                   	pop    %esi
 3b2:	5f                   	pop    %edi
 3b3:	5d                   	pop    %ebp
 3b4:	c3                   	ret    
 3b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	56                   	push   %esi
 3c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3c5:	83 ec 08             	sub    $0x8,%esp
 3c8:	6a 00                	push   $0x0
 3ca:	ff 75 08             	pushl  0x8(%ebp)
 3cd:	e8 70 01 00 00       	call   542 <open>
  if(fd < 0)
 3d2:	83 c4 10             	add    $0x10,%esp
 3d5:	85 c0                	test   %eax,%eax
 3d7:	78 27                	js     400 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3d9:	83 ec 08             	sub    $0x8,%esp
 3dc:	ff 75 0c             	pushl  0xc(%ebp)
 3df:	89 c3                	mov    %eax,%ebx
 3e1:	50                   	push   %eax
 3e2:	e8 73 01 00 00       	call   55a <fstat>
  close(fd);
 3e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3ea:	89 c6                	mov    %eax,%esi
  close(fd);
 3ec:	e8 39 01 00 00       	call   52a <close>
  return r;
 3f1:	83 c4 10             	add    $0x10,%esp
}
 3f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3f7:	89 f0                	mov    %esi,%eax
 3f9:	5b                   	pop    %ebx
 3fa:	5e                   	pop    %esi
 3fb:	5d                   	pop    %ebp
 3fc:	c3                   	ret    
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 400:	be ff ff ff ff       	mov    $0xffffffff,%esi
 405:	eb ed                	jmp    3f4 <stat+0x34>
 407:	89 f6                	mov    %esi,%esi
 409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000410 <atoi>:

int
atoi(const char *s)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	53                   	push   %ebx
 414:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 417:	0f be 11             	movsbl (%ecx),%edx
 41a:	8d 42 d0             	lea    -0x30(%edx),%eax
 41d:	3c 09                	cmp    $0x9,%al
  n = 0;
 41f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 424:	77 1f                	ja     445 <atoi+0x35>
 426:	8d 76 00             	lea    0x0(%esi),%esi
 429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 430:	8d 04 80             	lea    (%eax,%eax,4),%eax
 433:	83 c1 01             	add    $0x1,%ecx
 436:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 43a:	0f be 11             	movsbl (%ecx),%edx
 43d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 440:	80 fb 09             	cmp    $0x9,%bl
 443:	76 eb                	jbe    430 <atoi+0x20>
  return n;
}
 445:	5b                   	pop    %ebx
 446:	5d                   	pop    %ebp
 447:	c3                   	ret    
 448:	90                   	nop
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000450 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	56                   	push   %esi
 454:	53                   	push   %ebx
 455:	8b 5d 10             	mov    0x10(%ebp),%ebx
 458:	8b 45 08             	mov    0x8(%ebp),%eax
 45b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 45e:	85 db                	test   %ebx,%ebx
 460:	7e 14                	jle    476 <memmove+0x26>
 462:	31 d2                	xor    %edx,%edx
 464:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 468:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 46c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 46f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 472:	39 d3                	cmp    %edx,%ebx
 474:	75 f2                	jne    468 <memmove+0x18>
  return vdst;
}
 476:	5b                   	pop    %ebx
 477:	5e                   	pop    %esi
 478:	5d                   	pop    %ebp
 479:	c3                   	ret    
 47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000480 <strcat>:

char *
strcat(char *d,const char *s)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	53                   	push   %ebx
 484:	8b 45 08             	mov    0x8(%ebp),%eax
 487:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *temp = d;
  while (*d)
 48a:	80 38 00             	cmpb   $0x0,(%eax)
 48d:	89 c2                	mov    %eax,%edx
 48f:	74 28                	je     4b9 <strcat+0x39>
 491:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ++d;
 498:	83 c2 01             	add    $0x1,%edx
  while (*d)
 49b:	80 3a 00             	cmpb   $0x0,(%edx)
 49e:	75 f8                	jne    498 <strcat+0x18>
  while (*s)
 4a0:	0f b6 0b             	movzbl (%ebx),%ecx
 4a3:	84 c9                	test   %cl,%cl
 4a5:	74 19                	je     4c0 <strcat+0x40>
 4a7:	89 f6                	mov    %esi,%esi
 4a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    *d++ = *s++;
 4b0:	83 c2 01             	add    $0x1,%edx
 4b3:	83 c3 01             	add    $0x1,%ebx
 4b6:	88 4a ff             	mov    %cl,-0x1(%edx)
  while (*s)
 4b9:	0f b6 0b             	movzbl (%ebx),%ecx
 4bc:	84 c9                	test   %cl,%cl
 4be:	75 f0                	jne    4b0 <strcat+0x30>
  *d = 0;
 4c0:	c6 02 00             	movb   $0x0,(%edx)
  return temp;
}
 4c3:	5b                   	pop    %ebx
 4c4:	5d                   	pop    %ebp
 4c5:	c3                   	ret    
 4c6:	8d 76 00             	lea    0x0(%esi),%esi
 4c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004d0 <strncpy>:
char *strncpy(char *s, const char *t, int n)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	56                   	push   %esi
 4d4:	53                   	push   %ebx
 4d5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4d8:	8b 45 08             	mov    0x8(%ebp),%eax
 4db:	8b 75 0c             	mov    0xc(%ebp),%esi
  int i;
  char *os;
  os = s;
  for (i = 0; i < n; i++)
 4de:	85 db                	test   %ebx,%ebx
 4e0:	7e 14                	jle    4f6 <strncpy+0x26>
 4e2:	31 d2                	xor    %edx,%edx
 4e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  {
    s[i] = t[i];
 4e8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 4ec:	88 0c 10             	mov    %cl,(%eax,%edx,1)
  for (i = 0; i < n; i++)
 4ef:	83 c2 01             	add    $0x1,%edx
 4f2:	39 d3                	cmp    %edx,%ebx
 4f4:	75 f2                	jne    4e8 <strncpy+0x18>
  }
  return os;
}
 4f6:	5b                   	pop    %ebx
 4f7:	5e                   	pop    %esi
 4f8:	5d                   	pop    %ebp
 4f9:	c3                   	ret    

000004fa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4fa:	b8 01 00 00 00       	mov    $0x1,%eax
 4ff:	cd 40                	int    $0x40
 501:	c3                   	ret    

00000502 <exit>:
SYSCALL(exit)
 502:	b8 02 00 00 00       	mov    $0x2,%eax
 507:	cd 40                	int    $0x40
 509:	c3                   	ret    

0000050a <wait>:
SYSCALL(wait)
 50a:	b8 03 00 00 00       	mov    $0x3,%eax
 50f:	cd 40                	int    $0x40
 511:	c3                   	ret    

00000512 <pipe>:
SYSCALL(pipe)
 512:	b8 04 00 00 00       	mov    $0x4,%eax
 517:	cd 40                	int    $0x40
 519:	c3                   	ret    

0000051a <read>:
SYSCALL(read)
 51a:	b8 05 00 00 00       	mov    $0x5,%eax
 51f:	cd 40                	int    $0x40
 521:	c3                   	ret    

00000522 <write>:
SYSCALL(write)
 522:	b8 10 00 00 00       	mov    $0x10,%eax
 527:	cd 40                	int    $0x40
 529:	c3                   	ret    

0000052a <close>:
SYSCALL(close)
 52a:	b8 15 00 00 00       	mov    $0x15,%eax
 52f:	cd 40                	int    $0x40
 531:	c3                   	ret    

00000532 <kill>:
SYSCALL(kill)
 532:	b8 06 00 00 00       	mov    $0x6,%eax
 537:	cd 40                	int    $0x40
 539:	c3                   	ret    

0000053a <exec>:
SYSCALL(exec)
 53a:	b8 07 00 00 00       	mov    $0x7,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    

00000542 <open>:
SYSCALL(open)
 542:	b8 0f 00 00 00       	mov    $0xf,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    

0000054a <mknod>:
SYSCALL(mknod)
 54a:	b8 11 00 00 00       	mov    $0x11,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <unlink>:
SYSCALL(unlink)
 552:	b8 12 00 00 00       	mov    $0x12,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <fstat>:
SYSCALL(fstat)
 55a:	b8 08 00 00 00       	mov    $0x8,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <link>:
SYSCALL(link)
 562:	b8 13 00 00 00       	mov    $0x13,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <mkdir>:
SYSCALL(mkdir)
 56a:	b8 14 00 00 00       	mov    $0x14,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <chdir>:
SYSCALL(chdir)
 572:	b8 09 00 00 00       	mov    $0x9,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <dup>:
SYSCALL(dup)
 57a:	b8 0a 00 00 00       	mov    $0xa,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <getpid>:
SYSCALL(getpid)
 582:	b8 0b 00 00 00       	mov    $0xb,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <sbrk>:
SYSCALL(sbrk)
 58a:	b8 0c 00 00 00       	mov    $0xc,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <sleep>:
SYSCALL(sleep)
 592:	b8 0d 00 00 00       	mov    $0xd,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <uptime>:
SYSCALL(uptime)
 59a:	b8 0e 00 00 00       	mov    $0xe,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    
 5a2:	66 90                	xchg   %ax,%ax
 5a4:	66 90                	xchg   %ax,%ax
 5a6:	66 90                	xchg   %ax,%ax
 5a8:	66 90                	xchg   %ax,%ax
 5aa:	66 90                	xchg   %ax,%ax
 5ac:	66 90                	xchg   %ax,%ax
 5ae:	66 90                	xchg   %ax,%ax

000005b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	56                   	push   %esi
 5b5:	53                   	push   %ebx
 5b6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 5b9:	85 d2                	test   %edx,%edx
{
 5bb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 5be:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 5c0:	79 76                	jns    638 <printint+0x88>
 5c2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5c6:	74 70                	je     638 <printint+0x88>
    x = -xx;
 5c8:	f7 d8                	neg    %eax
    neg = 1;
 5ca:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 5d1:	31 f6                	xor    %esi,%esi
 5d3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 5d6:	eb 0a                	jmp    5e2 <printint+0x32>
 5d8:	90                   	nop
 5d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 5e0:	89 fe                	mov    %edi,%esi
 5e2:	31 d2                	xor    %edx,%edx
 5e4:	8d 7e 01             	lea    0x1(%esi),%edi
 5e7:	f7 f1                	div    %ecx
 5e9:	0f b6 92 54 0a 00 00 	movzbl 0xa54(%edx),%edx
  }while((x /= base) != 0);
 5f0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 5f2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 5f5:	75 e9                	jne    5e0 <printint+0x30>
  if(neg)
 5f7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 5fa:	85 c0                	test   %eax,%eax
 5fc:	74 08                	je     606 <printint+0x56>
    buf[i++] = '-';
 5fe:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 603:	8d 7e 02             	lea    0x2(%esi),%edi
 606:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 60a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 60d:	8d 76 00             	lea    0x0(%esi),%esi
 610:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 613:	83 ec 04             	sub    $0x4,%esp
 616:	83 ee 01             	sub    $0x1,%esi
 619:	6a 01                	push   $0x1
 61b:	53                   	push   %ebx
 61c:	57                   	push   %edi
 61d:	88 45 d7             	mov    %al,-0x29(%ebp)
 620:	e8 fd fe ff ff       	call   522 <write>

  while(--i >= 0)
 625:	83 c4 10             	add    $0x10,%esp
 628:	39 de                	cmp    %ebx,%esi
 62a:	75 e4                	jne    610 <printint+0x60>
    putc(fd, buf[i]);
}
 62c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 62f:	5b                   	pop    %ebx
 630:	5e                   	pop    %esi
 631:	5f                   	pop    %edi
 632:	5d                   	pop    %ebp
 633:	c3                   	ret    
 634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 638:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 63f:	eb 90                	jmp    5d1 <printint+0x21>
 641:	eb 0d                	jmp    650 <printf>
 643:	90                   	nop
 644:	90                   	nop
 645:	90                   	nop
 646:	90                   	nop
 647:	90                   	nop
 648:	90                   	nop
 649:	90                   	nop
 64a:	90                   	nop
 64b:	90                   	nop
 64c:	90                   	nop
 64d:	90                   	nop
 64e:	90                   	nop
 64f:	90                   	nop

00000650 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	57                   	push   %edi
 654:	56                   	push   %esi
 655:	53                   	push   %ebx
 656:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 659:	8b 75 0c             	mov    0xc(%ebp),%esi
 65c:	0f b6 1e             	movzbl (%esi),%ebx
 65f:	84 db                	test   %bl,%bl
 661:	0f 84 b3 00 00 00    	je     71a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 667:	8d 45 10             	lea    0x10(%ebp),%eax
 66a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 66d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 66f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 672:	eb 2f                	jmp    6a3 <printf+0x53>
 674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 678:	83 f8 25             	cmp    $0x25,%eax
 67b:	0f 84 a7 00 00 00    	je     728 <printf+0xd8>
  write(fd, &c, 1);
 681:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 684:	83 ec 04             	sub    $0x4,%esp
 687:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 68a:	6a 01                	push   $0x1
 68c:	50                   	push   %eax
 68d:	ff 75 08             	pushl  0x8(%ebp)
 690:	e8 8d fe ff ff       	call   522 <write>
 695:	83 c4 10             	add    $0x10,%esp
 698:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 69b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 69f:	84 db                	test   %bl,%bl
 6a1:	74 77                	je     71a <printf+0xca>
    if(state == 0){
 6a3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 6a5:	0f be cb             	movsbl %bl,%ecx
 6a8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 6ab:	74 cb                	je     678 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 6ad:	83 ff 25             	cmp    $0x25,%edi
 6b0:	75 e6                	jne    698 <printf+0x48>
      if(c == 'd'){
 6b2:	83 f8 64             	cmp    $0x64,%eax
 6b5:	0f 84 05 01 00 00    	je     7c0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 6bb:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 6c1:	83 f9 70             	cmp    $0x70,%ecx
 6c4:	74 72                	je     738 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 6c6:	83 f8 73             	cmp    $0x73,%eax
 6c9:	0f 84 99 00 00 00    	je     768 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 6cf:	83 f8 63             	cmp    $0x63,%eax
 6d2:	0f 84 08 01 00 00    	je     7e0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 6d8:	83 f8 25             	cmp    $0x25,%eax
 6db:	0f 84 ef 00 00 00    	je     7d0 <printf+0x180>
  write(fd, &c, 1);
 6e1:	8d 45 e7             	lea    -0x19(%ebp),%eax
 6e4:	83 ec 04             	sub    $0x4,%esp
 6e7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6eb:	6a 01                	push   $0x1
 6ed:	50                   	push   %eax
 6ee:	ff 75 08             	pushl  0x8(%ebp)
 6f1:	e8 2c fe ff ff       	call   522 <write>
 6f6:	83 c4 0c             	add    $0xc,%esp
 6f9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 6fc:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 6ff:	6a 01                	push   $0x1
 701:	50                   	push   %eax
 702:	ff 75 08             	pushl  0x8(%ebp)
 705:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 708:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 70a:	e8 13 fe ff ff       	call   522 <write>
  for(i = 0; fmt[i]; i++){
 70f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 713:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 716:	84 db                	test   %bl,%bl
 718:	75 89                	jne    6a3 <printf+0x53>
    }
  }
}
 71a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 71d:	5b                   	pop    %ebx
 71e:	5e                   	pop    %esi
 71f:	5f                   	pop    %edi
 720:	5d                   	pop    %ebp
 721:	c3                   	ret    
 722:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 728:	bf 25 00 00 00       	mov    $0x25,%edi
 72d:	e9 66 ff ff ff       	jmp    698 <printf+0x48>
 732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 738:	83 ec 0c             	sub    $0xc,%esp
 73b:	b9 10 00 00 00       	mov    $0x10,%ecx
 740:	6a 00                	push   $0x0
 742:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 745:	8b 45 08             	mov    0x8(%ebp),%eax
 748:	8b 17                	mov    (%edi),%edx
 74a:	e8 61 fe ff ff       	call   5b0 <printint>
        ap++;
 74f:	89 f8                	mov    %edi,%eax
 751:	83 c4 10             	add    $0x10,%esp
      state = 0;
 754:	31 ff                	xor    %edi,%edi
        ap++;
 756:	83 c0 04             	add    $0x4,%eax
 759:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 75c:	e9 37 ff ff ff       	jmp    698 <printf+0x48>
 761:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 768:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 76b:	8b 08                	mov    (%eax),%ecx
        ap++;
 76d:	83 c0 04             	add    $0x4,%eax
 770:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 773:	85 c9                	test   %ecx,%ecx
 775:	0f 84 8e 00 00 00    	je     809 <printf+0x1b9>
        while(*s != 0){
 77b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 77e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 780:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 782:	84 c0                	test   %al,%al
 784:	0f 84 0e ff ff ff    	je     698 <printf+0x48>
 78a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 78d:	89 de                	mov    %ebx,%esi
 78f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 792:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 795:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 798:	83 ec 04             	sub    $0x4,%esp
          s++;
 79b:	83 c6 01             	add    $0x1,%esi
 79e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 7a1:	6a 01                	push   $0x1
 7a3:	57                   	push   %edi
 7a4:	53                   	push   %ebx
 7a5:	e8 78 fd ff ff       	call   522 <write>
        while(*s != 0){
 7aa:	0f b6 06             	movzbl (%esi),%eax
 7ad:	83 c4 10             	add    $0x10,%esp
 7b0:	84 c0                	test   %al,%al
 7b2:	75 e4                	jne    798 <printf+0x148>
 7b4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 7b7:	31 ff                	xor    %edi,%edi
 7b9:	e9 da fe ff ff       	jmp    698 <printf+0x48>
 7be:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 7c0:	83 ec 0c             	sub    $0xc,%esp
 7c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7c8:	6a 01                	push   $0x1
 7ca:	e9 73 ff ff ff       	jmp    742 <printf+0xf2>
 7cf:	90                   	nop
  write(fd, &c, 1);
 7d0:	83 ec 04             	sub    $0x4,%esp
 7d3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 7d6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 7d9:	6a 01                	push   $0x1
 7db:	e9 21 ff ff ff       	jmp    701 <printf+0xb1>
        putc(fd, *ap);
 7e0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 7e3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7e6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 7e8:	6a 01                	push   $0x1
        ap++;
 7ea:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 7ed:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 7f0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 7f3:	50                   	push   %eax
 7f4:	ff 75 08             	pushl  0x8(%ebp)
 7f7:	e8 26 fd ff ff       	call   522 <write>
        ap++;
 7fc:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 7ff:	83 c4 10             	add    $0x10,%esp
      state = 0;
 802:	31 ff                	xor    %edi,%edi
 804:	e9 8f fe ff ff       	jmp    698 <printf+0x48>
          s = "(null)";
 809:	bb 4c 0a 00 00       	mov    $0xa4c,%ebx
        while(*s != 0){
 80e:	b8 28 00 00 00       	mov    $0x28,%eax
 813:	e9 72 ff ff ff       	jmp    78a <printf+0x13a>
 818:	66 90                	xchg   %ax,%ax
 81a:	66 90                	xchg   %ax,%ax
 81c:	66 90                	xchg   %ax,%ax
 81e:	66 90                	xchg   %ax,%ax

00000820 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 820:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 821:	a1 84 0d 00 00       	mov    0xd84,%eax
{
 826:	89 e5                	mov    %esp,%ebp
 828:	57                   	push   %edi
 829:	56                   	push   %esi
 82a:	53                   	push   %ebx
 82b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 82e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 838:	39 c8                	cmp    %ecx,%eax
 83a:	8b 10                	mov    (%eax),%edx
 83c:	73 32                	jae    870 <free+0x50>
 83e:	39 d1                	cmp    %edx,%ecx
 840:	72 04                	jb     846 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 842:	39 d0                	cmp    %edx,%eax
 844:	72 32                	jb     878 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 846:	8b 73 fc             	mov    -0x4(%ebx),%esi
 849:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 84c:	39 fa                	cmp    %edi,%edx
 84e:	74 30                	je     880 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 850:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 853:	8b 50 04             	mov    0x4(%eax),%edx
 856:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 859:	39 f1                	cmp    %esi,%ecx
 85b:	74 3a                	je     897 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 85d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 85f:	a3 84 0d 00 00       	mov    %eax,0xd84
}
 864:	5b                   	pop    %ebx
 865:	5e                   	pop    %esi
 866:	5f                   	pop    %edi
 867:	5d                   	pop    %ebp
 868:	c3                   	ret    
 869:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 870:	39 d0                	cmp    %edx,%eax
 872:	72 04                	jb     878 <free+0x58>
 874:	39 d1                	cmp    %edx,%ecx
 876:	72 ce                	jb     846 <free+0x26>
{
 878:	89 d0                	mov    %edx,%eax
 87a:	eb bc                	jmp    838 <free+0x18>
 87c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 880:	03 72 04             	add    0x4(%edx),%esi
 883:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 886:	8b 10                	mov    (%eax),%edx
 888:	8b 12                	mov    (%edx),%edx
 88a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 88d:	8b 50 04             	mov    0x4(%eax),%edx
 890:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 893:	39 f1                	cmp    %esi,%ecx
 895:	75 c6                	jne    85d <free+0x3d>
    p->s.size += bp->s.size;
 897:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 89a:	a3 84 0d 00 00       	mov    %eax,0xd84
    p->s.size += bp->s.size;
 89f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8a2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8a5:	89 10                	mov    %edx,(%eax)
}
 8a7:	5b                   	pop    %ebx
 8a8:	5e                   	pop    %esi
 8a9:	5f                   	pop    %edi
 8aa:	5d                   	pop    %ebp
 8ab:	c3                   	ret    
 8ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8b0:	55                   	push   %ebp
 8b1:	89 e5                	mov    %esp,%ebp
 8b3:	57                   	push   %edi
 8b4:	56                   	push   %esi
 8b5:	53                   	push   %ebx
 8b6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8bc:	8b 15 84 0d 00 00    	mov    0xd84,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8c2:	8d 78 07             	lea    0x7(%eax),%edi
 8c5:	c1 ef 03             	shr    $0x3,%edi
 8c8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 8cb:	85 d2                	test   %edx,%edx
 8cd:	0f 84 9d 00 00 00    	je     970 <malloc+0xc0>
 8d3:	8b 02                	mov    (%edx),%eax
 8d5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 8d8:	39 cf                	cmp    %ecx,%edi
 8da:	76 6c                	jbe    948 <malloc+0x98>
 8dc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 8e2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8e7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 8ea:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 8f1:	eb 0e                	jmp    901 <malloc+0x51>
 8f3:	90                   	nop
 8f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8fa:	8b 48 04             	mov    0x4(%eax),%ecx
 8fd:	39 f9                	cmp    %edi,%ecx
 8ff:	73 47                	jae    948 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 901:	39 05 84 0d 00 00    	cmp    %eax,0xd84
 907:	89 c2                	mov    %eax,%edx
 909:	75 ed                	jne    8f8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 90b:	83 ec 0c             	sub    $0xc,%esp
 90e:	56                   	push   %esi
 90f:	e8 76 fc ff ff       	call   58a <sbrk>
  if(p == (char*)-1)
 914:	83 c4 10             	add    $0x10,%esp
 917:	83 f8 ff             	cmp    $0xffffffff,%eax
 91a:	74 1c                	je     938 <malloc+0x88>
  hp->s.size = nu;
 91c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 91f:	83 ec 0c             	sub    $0xc,%esp
 922:	83 c0 08             	add    $0x8,%eax
 925:	50                   	push   %eax
 926:	e8 f5 fe ff ff       	call   820 <free>
  return freep;
 92b:	8b 15 84 0d 00 00    	mov    0xd84,%edx
      if((p = morecore(nunits)) == 0)
 931:	83 c4 10             	add    $0x10,%esp
 934:	85 d2                	test   %edx,%edx
 936:	75 c0                	jne    8f8 <malloc+0x48>
        return 0;
  }
}
 938:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 93b:	31 c0                	xor    %eax,%eax
}
 93d:	5b                   	pop    %ebx
 93e:	5e                   	pop    %esi
 93f:	5f                   	pop    %edi
 940:	5d                   	pop    %ebp
 941:	c3                   	ret    
 942:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 948:	39 cf                	cmp    %ecx,%edi
 94a:	74 54                	je     9a0 <malloc+0xf0>
        p->s.size -= nunits;
 94c:	29 f9                	sub    %edi,%ecx
 94e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 951:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 954:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 957:	89 15 84 0d 00 00    	mov    %edx,0xd84
}
 95d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 960:	83 c0 08             	add    $0x8,%eax
}
 963:	5b                   	pop    %ebx
 964:	5e                   	pop    %esi
 965:	5f                   	pop    %edi
 966:	5d                   	pop    %ebp
 967:	c3                   	ret    
 968:	90                   	nop
 969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 970:	c7 05 84 0d 00 00 88 	movl   $0xd88,0xd84
 977:	0d 00 00 
 97a:	c7 05 88 0d 00 00 88 	movl   $0xd88,0xd88
 981:	0d 00 00 
    base.s.size = 0;
 984:	b8 88 0d 00 00       	mov    $0xd88,%eax
 989:	c7 05 8c 0d 00 00 00 	movl   $0x0,0xd8c
 990:	00 00 00 
 993:	e9 44 ff ff ff       	jmp    8dc <malloc+0x2c>
 998:	90                   	nop
 999:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 9a0:	8b 08                	mov    (%eax),%ecx
 9a2:	89 0a                	mov    %ecx,(%edx)
 9a4:	eb b1                	jmp    957 <malloc+0xa7>
