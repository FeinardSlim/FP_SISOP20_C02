
_join:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
	}
	/* NOTREACHED */
}

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
  11:	81 ec 58 0d 03 00    	sub    $0x30d58,%esp
	isi datafile1[100];
	isi datafile2[100];
	if(argc < 3){
  17:	83 39 02             	cmpl   $0x2,(%ecx)
{
  1a:	8b 59 04             	mov    0x4(%ecx),%ebx
	if(argc < 3){
  1d:	7f 13                	jg     32 <main+0x32>
		printf(1,"Error:Join files.....\n");
  1f:	50                   	push   %eax
  20:	50                   	push   %eax
  21:	68 d8 09 00 00       	push   $0x9d8
  26:	6a 01                	push   $0x1
  28:	e8 53 06 00 00       	call   680 <printf>
		exit();
  2d:	e8 00 05 00 00       	call   532 <exit>
	}
	int file1,file2;
	if ((file1 = open(argv[1], 0)) < 0)
  32:	50                   	push   %eax
  33:	50                   	push   %eax
  34:	6a 00                	push   $0x0
  36:	ff 73 04             	pushl  0x4(%ebx)
  39:	e8 34 05 00 00       	call   572 <open>
  3e:	83 c4 10             	add    $0x10,%esp
  41:	85 c0                	test   %eax,%eax
  43:	89 c6                	mov    %eax,%esi
  45:	0f 88 2c 01 00 00    	js     177 <main+0x177>
	{ // Error handling : cannot read file 1
		printf(1, "Failed to read files %s\n", argv[1]);
		exit();
	}
	if ((file2 = open(argv[2], 0)) < 0)
  4b:	57                   	push   %edi
  4c:	57                   	push   %edi
  4d:	6a 00                	push   $0x0
  4f:	ff 73 08             	pushl  0x8(%ebx)
  52:	e8 1b 05 00 00       	call   572 <open>
  57:	83 c4 10             	add    $0x10,%esp
  5a:	85 c0                	test   %eax,%eax
  5c:	89 85 a4 f2 fc ff    	mov    %eax,-0x30d5c(%ebp)
  62:	0f 88 24 01 00 00    	js     18c <main+0x18c>
	{ // Error handling : cannot read file 2
		printf(1, "failed to read %s\n", argv[2]);
		exit();
	}
	read(file1, buf1, sizeof(buf1));
  68:	50                   	push   %eax
  69:	68 a0 86 01 00       	push   $0x186a0
  6e:	68 80 0d 00 00       	push   $0xd80
  73:	56                   	push   %esi
  74:	e8 d1 04 00 00       	call   54a <read>
	read(file2, buf2, sizeof(buf2));
  79:	83 c4 0c             	add    $0xc,%esp
  7c:	68 a0 86 01 00       	push   $0x186a0
  81:	68 20 94 01 00       	push   $0x19420
  86:	ff b5 a4 f2 fc ff    	pushl  -0x30d5c(%ebp)
  8c:	e8 b9 04 00 00       	call   54a <read>

	char *pch = strtok(buf1, " \n");
  91:	58                   	pop    %eax
  92:	5a                   	pop    %edx
  93:	68 1b 0a 00 00       	push   $0xa1b
  98:	68 80 0d 00 00       	push   $0xd80
  9d:	e8 0e 01 00 00       	call   1b0 <strtok>
	int temp = 0;
	while (pch != NULL)
  a2:	83 c4 10             	add    $0x10,%esp
  a5:	85 c0                	test   %eax,%eax
  a7:	74 2c                	je     d5 <main+0xd5>
  a9:	8d 9d a8 f2 fc ff    	lea    -0x30d58(%ebp),%ebx
  af:	90                   	nop
	{
		strcpy(datafile1[temp].array,pch);
  b0:	83 ec 08             	sub    $0x8,%esp
  b3:	50                   	push   %eax
  b4:	53                   	push   %ebx
  b5:	81 c3 e8 03 00 00    	add    $0x3e8,%ebx
  bb:	e8 a0 01 00 00       	call   260 <strcpy>
		pch = strtok(NULL," \n");
  c0:	5f                   	pop    %edi
  c1:	58                   	pop    %eax
  c2:	68 1b 0a 00 00       	push   $0xa1b
  c7:	6a 00                	push   $0x0
  c9:	e8 e2 00 00 00       	call   1b0 <strtok>
	while (pch != NULL)
  ce:	83 c4 10             	add    $0x10,%esp
  d1:	85 c0                	test   %eax,%eax
  d3:	75 db                	jne    b0 <main+0xb0>
		temp++;
	}
	temp = 0;
	char *data = strtok(buf2," \n");
  d5:	53                   	push   %ebx
  d6:	53                   	push   %ebx
  d7:	68 1b 0a 00 00       	push   $0xa1b
  dc:	68 20 94 01 00       	push   $0x19420
  e1:	e8 ca 00 00 00       	call   1b0 <strtok>
	while (data != NULL)
  e6:	83 c4 10             	add    $0x10,%esp
  e9:	85 c0                	test   %eax,%eax
  eb:	74 70                	je     15d <main+0x15d>
  ed:	8d bd 48 79 fe ff    	lea    -0x186b8(%ebp),%edi
	temp = 0;
  f3:	31 db                	xor    %ebx,%ebx
  f5:	8d 76 00             	lea    0x0(%esi),%esi
	{
		strcpy(datafile2[temp].array,data);
  f8:	83 ec 08             	sub    $0x8,%esp
		data = strtok(NULL," \n");
		temp++;
  fb:	83 c3 01             	add    $0x1,%ebx
		strcpy(datafile2[temp].array,data);
  fe:	50                   	push   %eax
  ff:	57                   	push   %edi
 100:	81 c7 e8 03 00 00    	add    $0x3e8,%edi
 106:	e8 55 01 00 00       	call   260 <strcpy>
		data = strtok(NULL," \n");
 10b:	5a                   	pop    %edx
 10c:	59                   	pop    %ecx
 10d:	68 1b 0a 00 00       	push   $0xa1b
 112:	6a 00                	push   $0x0
 114:	e8 97 00 00 00       	call   1b0 <strtok>
	while (data != NULL)
 119:	83 c4 10             	add    $0x10,%esp
 11c:	85 c0                	test   %eax,%eax
 11e:	75 d8                	jne    f8 <main+0xf8>
 120:	69 fb e8 03 00 00    	imul   $0x3e8,%ebx,%edi
 126:	31 db                	xor    %ebx,%ebx
 128:	90                   	nop
 129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	}
	int  i =0;
	while (i < temp)
	{
		printf(1,"%s %s\n",datafile1[i].array,datafile2[i].array);
 130:	8d 85 48 79 fe ff    	lea    -0x186b8(%ebp),%eax
 136:	8d 14 03             	lea    (%ebx,%eax,1),%edx
 139:	8d 85 a8 f2 fc ff    	lea    -0x30d58(%ebp),%eax
 13f:	52                   	push   %edx
 140:	8d 14 18             	lea    (%eax,%ebx,1),%edx
 143:	81 c3 e8 03 00 00    	add    $0x3e8,%ebx
 149:	52                   	push   %edx
 14a:	68 1e 0a 00 00       	push   $0xa1e
 14f:	6a 01                	push   $0x1
 151:	e8 2a 05 00 00       	call   680 <printf>
	while (i < temp)
 156:	83 c4 10             	add    $0x10,%esp
 159:	39 df                	cmp    %ebx,%edi
 15b:	75 d3                	jne    130 <main+0x130>
		i++;
	}
	
	
	
	close(file1);
 15d:	83 ec 0c             	sub    $0xc,%esp
 160:	56                   	push   %esi
 161:	e8 f4 03 00 00       	call   55a <close>
	close(file2);
 166:	58                   	pop    %eax
 167:	ff b5 a4 f2 fc ff    	pushl  -0x30d5c(%ebp)
 16d:	e8 e8 03 00 00       	call   55a <close>
	exit();
 172:	e8 bb 03 00 00       	call   532 <exit>
		printf(1, "Failed to read files %s\n", argv[1]);
 177:	50                   	push   %eax
 178:	ff 73 04             	pushl  0x4(%ebx)
 17b:	68 ef 09 00 00       	push   $0x9ef
 180:	6a 01                	push   $0x1
 182:	e8 f9 04 00 00       	call   680 <printf>
		exit();
 187:	e8 a6 03 00 00       	call   532 <exit>
		printf(1, "failed to read %s\n", argv[2]);
 18c:	51                   	push   %ecx
 18d:	ff 73 08             	pushl  0x8(%ebx)
 190:	68 08 0a 00 00       	push   $0xa08
 195:	6a 01                	push   $0x1
 197:	e8 e4 04 00 00       	call   680 <printf>
		exit();
 19c:	e8 91 03 00 00       	call   532 <exit>
 1a1:	66 90                	xchg   %ax,%ax
 1a3:	66 90                	xchg   %ax,%ax
 1a5:	66 90                	xchg   %ax,%ax
 1a7:	66 90                	xchg   %ax,%ax
 1a9:	66 90                	xchg   %ax,%ax
 1ab:	66 90                	xchg   %ax,%ax
 1ad:	66 90                	xchg   %ax,%ax
 1af:	90                   	nop

000001b0 <strtok>:
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	57                   	push   %edi
 1b4:	56                   	push   %esi
	if (s == NULL && (s = last) == NULL)
 1b5:	8b 45 08             	mov    0x8(%ebp),%eax
{
 1b8:	53                   	push   %ebx
	if (s == NULL && (s = last) == NULL)
 1b9:	85 c0                	test   %eax,%eax
 1bb:	74 7b                	je     238 <strtok+0x88>
 1bd:	8b 5d 08             	mov    0x8(%ebp),%ebx
	c = *s++;
 1c0:	8d 73 01             	lea    0x1(%ebx),%esi
	for (spanp = (char *)delim; (sc = *spanp++) != 0;)
 1c3:	8b 45 0c             	mov    0xc(%ebp),%eax
	c = *s++;
 1c6:	0f be 4e ff          	movsbl -0x1(%esi),%ecx
	for (spanp = (char *)delim; (sc = *spanp++) != 0;)
 1ca:	eb 08                	jmp    1d4 <strtok+0x24>
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		if (c == sc)
 1d0:	39 d1                	cmp    %edx,%ecx
 1d2:	74 4c                	je     220 <strtok+0x70>
	for (spanp = (char *)delim; (sc = *spanp++) != 0;)
 1d4:	83 c0 01             	add    $0x1,%eax
 1d7:	0f be 50 ff          	movsbl -0x1(%eax),%edx
 1db:	85 d2                	test   %edx,%edx
 1dd:	75 f1                	jne    1d0 <strtok+0x20>
	if (c == 0)
 1df:	85 c9                	test   %ecx,%ecx
 1e1:	89 5d 08             	mov    %ebx,0x8(%ebp)
 1e4:	74 66                	je     24c <strtok+0x9c>
		c = *s++;
 1e6:	8d 7e 01             	lea    0x1(%esi),%edi
		spanp = (char *)delim;
 1e9:	8b 45 0c             	mov    0xc(%ebp),%eax
		c = *s++;
 1ec:	0f b6 5f ff          	movzbl -0x1(%edi),%ebx
 1f0:	eb 0a                	jmp    1fc <strtok+0x4c>
 1f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		} while (sc != 0);
 1f8:	85 c9                	test   %ecx,%ecx
 1fa:	74 2c                	je     228 <strtok+0x78>
			if ((sc = *spanp++) == c)
 1fc:	83 c0 01             	add    $0x1,%eax
 1ff:	0f be 48 ff          	movsbl -0x1(%eax),%ecx
 203:	38 cb                	cmp    %cl,%bl
 205:	75 f1                	jne    1f8 <strtok+0x48>
				if (c == 0)
 207:	85 c9                	test   %ecx,%ecx
 209:	74 25                	je     230 <strtok+0x80>
					s[-1] = 0;
 20b:	c6 06 00             	movb   $0x0,(%esi)
				return (tok);
 20e:	8b 45 08             	mov    0x8(%ebp),%eax
				last = s;
 211:	89 3d 60 0d 00 00    	mov    %edi,0xd60
}
 217:	5b                   	pop    %ebx
 218:	5e                   	pop    %esi
 219:	5f                   	pop    %edi
 21a:	5d                   	pop    %ebp
 21b:	c3                   	ret    
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
cont:
 220:	89 f3                	mov    %esi,%ebx
 222:	eb 9c                	jmp    1c0 <strtok+0x10>
 224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 228:	89 fe                	mov    %edi,%esi
 22a:	eb ba                	jmp    1e6 <strtok+0x36>
 22c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
					s = NULL;
 230:	31 ff                	xor    %edi,%edi
 232:	eb da                	jmp    20e <strtok+0x5e>
 234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	if (s == NULL && (s = last) == NULL)
 238:	a1 60 0d 00 00       	mov    0xd60,%eax
 23d:	85 c0                	test   %eax,%eax
 23f:	89 45 08             	mov    %eax,0x8(%ebp)
 242:	0f 85 75 ff ff ff    	jne    1bd <strtok+0xd>
		return (NULL);
 248:	31 c0                	xor    %eax,%eax
 24a:	eb cb                	jmp    217 <strtok+0x67>
		last = NULL;
 24c:	c7 05 60 0d 00 00 00 	movl   $0x0,0xd60
 253:	00 00 00 
		return (NULL);
 256:	31 c0                	xor    %eax,%eax
 258:	eb bd                	jmp    217 <strtok+0x67>
 25a:	66 90                	xchg   %ax,%ax
 25c:	66 90                	xchg   %ax,%ax
 25e:	66 90                	xchg   %ax,%ax

00000260 <strcpy>:
#include "x86.h"
#include "fcntl.h"

char*
strcpy(char *s, const char *t)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	53                   	push   %ebx
 264:	8b 45 08             	mov    0x8(%ebp),%eax
 267:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 26a:	89 c2                	mov    %eax,%edx
 26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 270:	83 c1 01             	add    $0x1,%ecx
 273:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 277:	83 c2 01             	add    $0x1,%edx
 27a:	84 db                	test   %bl,%bl
 27c:	88 5a ff             	mov    %bl,-0x1(%edx)
 27f:	75 ef                	jne    270 <strcpy+0x10>
    ;
  return os;
}
 281:	5b                   	pop    %ebx
 282:	5d                   	pop    %ebp
 283:	c3                   	ret    
 284:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 28a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000290 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	53                   	push   %ebx
 294:	8b 55 08             	mov    0x8(%ebp),%edx
 297:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 29a:	0f b6 02             	movzbl (%edx),%eax
 29d:	0f b6 19             	movzbl (%ecx),%ebx
 2a0:	84 c0                	test   %al,%al
 2a2:	75 1c                	jne    2c0 <strcmp+0x30>
 2a4:	eb 2a                	jmp    2d0 <strcmp+0x40>
 2a6:	8d 76 00             	lea    0x0(%esi),%esi
 2a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 2b0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 2b3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 2b6:	83 c1 01             	add    $0x1,%ecx
 2b9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 2bc:	84 c0                	test   %al,%al
 2be:	74 10                	je     2d0 <strcmp+0x40>
 2c0:	38 d8                	cmp    %bl,%al
 2c2:	74 ec                	je     2b0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 2c4:	29 d8                	sub    %ebx,%eax
}
 2c6:	5b                   	pop    %ebx
 2c7:	5d                   	pop    %ebp
 2c8:	c3                   	ret    
 2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2d0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 2d2:	29 d8                	sub    %ebx,%eax
}
 2d4:	5b                   	pop    %ebx
 2d5:	5d                   	pop    %ebp
 2d6:	c3                   	ret    
 2d7:	89 f6                	mov    %esi,%esi
 2d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002e0 <strlen>:

uint
strlen(const char *s)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 2e6:	80 39 00             	cmpb   $0x0,(%ecx)
 2e9:	74 15                	je     300 <strlen+0x20>
 2eb:	31 d2                	xor    %edx,%edx
 2ed:	8d 76 00             	lea    0x0(%esi),%esi
 2f0:	83 c2 01             	add    $0x1,%edx
 2f3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 2f7:	89 d0                	mov    %edx,%eax
 2f9:	75 f5                	jne    2f0 <strlen+0x10>
    ;
  return n;
}
 2fb:	5d                   	pop    %ebp
 2fc:	c3                   	ret    
 2fd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 300:	31 c0                	xor    %eax,%eax
}
 302:	5d                   	pop    %ebp
 303:	c3                   	ret    
 304:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 30a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000310 <memset>:

void*
memset(void *dst, int c, uint n)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 317:	8b 4d 10             	mov    0x10(%ebp),%ecx
 31a:	8b 45 0c             	mov    0xc(%ebp),%eax
 31d:	89 d7                	mov    %edx,%edi
 31f:	fc                   	cld    
 320:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 322:	89 d0                	mov    %edx,%eax
 324:	5f                   	pop    %edi
 325:	5d                   	pop    %ebp
 326:	c3                   	ret    
 327:	89 f6                	mov    %esi,%esi
 329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000330 <strchr>:

char*
strchr(const char *s, char c)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	53                   	push   %ebx
 334:	8b 45 08             	mov    0x8(%ebp),%eax
 337:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 33a:	0f b6 10             	movzbl (%eax),%edx
 33d:	84 d2                	test   %dl,%dl
 33f:	74 1d                	je     35e <strchr+0x2e>
    if(*s == c)
 341:	38 d3                	cmp    %dl,%bl
 343:	89 d9                	mov    %ebx,%ecx
 345:	75 0d                	jne    354 <strchr+0x24>
 347:	eb 17                	jmp    360 <strchr+0x30>
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 350:	38 ca                	cmp    %cl,%dl
 352:	74 0c                	je     360 <strchr+0x30>
  for(; *s; s++)
 354:	83 c0 01             	add    $0x1,%eax
 357:	0f b6 10             	movzbl (%eax),%edx
 35a:	84 d2                	test   %dl,%dl
 35c:	75 f2                	jne    350 <strchr+0x20>
      return (char*)s;
  return 0;
 35e:	31 c0                	xor    %eax,%eax
}
 360:	5b                   	pop    %ebx
 361:	5d                   	pop    %ebp
 362:	c3                   	ret    
 363:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000370 <gets>:

char*
gets(char *buf, int max)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	57                   	push   %edi
 374:	56                   	push   %esi
 375:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 376:	31 f6                	xor    %esi,%esi
 378:	89 f3                	mov    %esi,%ebx
{
 37a:	83 ec 1c             	sub    $0x1c,%esp
 37d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 380:	eb 2f                	jmp    3b1 <gets+0x41>
 382:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 388:	8d 45 e7             	lea    -0x19(%ebp),%eax
 38b:	83 ec 04             	sub    $0x4,%esp
 38e:	6a 01                	push   $0x1
 390:	50                   	push   %eax
 391:	6a 00                	push   $0x0
 393:	e8 b2 01 00 00       	call   54a <read>
    if(cc < 1)
 398:	83 c4 10             	add    $0x10,%esp
 39b:	85 c0                	test   %eax,%eax
 39d:	7e 1c                	jle    3bb <gets+0x4b>
      break;
    buf[i++] = c;
 39f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3a3:	83 c7 01             	add    $0x1,%edi
 3a6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 3a9:	3c 0a                	cmp    $0xa,%al
 3ab:	74 23                	je     3d0 <gets+0x60>
 3ad:	3c 0d                	cmp    $0xd,%al
 3af:	74 1f                	je     3d0 <gets+0x60>
  for(i=0; i+1 < max; ){
 3b1:	83 c3 01             	add    $0x1,%ebx
 3b4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3b7:	89 fe                	mov    %edi,%esi
 3b9:	7c cd                	jl     388 <gets+0x18>
 3bb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 3bd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 3c0:	c6 03 00             	movb   $0x0,(%ebx)
}
 3c3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3c6:	5b                   	pop    %ebx
 3c7:	5e                   	pop    %esi
 3c8:	5f                   	pop    %edi
 3c9:	5d                   	pop    %ebp
 3ca:	c3                   	ret    
 3cb:	90                   	nop
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3d0:	8b 75 08             	mov    0x8(%ebp),%esi
 3d3:	8b 45 08             	mov    0x8(%ebp),%eax
 3d6:	01 de                	add    %ebx,%esi
 3d8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 3da:	c6 03 00             	movb   $0x0,(%ebx)
}
 3dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3e0:	5b                   	pop    %ebx
 3e1:	5e                   	pop    %esi
 3e2:	5f                   	pop    %edi
 3e3:	5d                   	pop    %ebp
 3e4:	c3                   	ret    
 3e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003f0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	56                   	push   %esi
 3f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3f5:	83 ec 08             	sub    $0x8,%esp
 3f8:	6a 00                	push   $0x0
 3fa:	ff 75 08             	pushl  0x8(%ebp)
 3fd:	e8 70 01 00 00       	call   572 <open>
  if(fd < 0)
 402:	83 c4 10             	add    $0x10,%esp
 405:	85 c0                	test   %eax,%eax
 407:	78 27                	js     430 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 409:	83 ec 08             	sub    $0x8,%esp
 40c:	ff 75 0c             	pushl  0xc(%ebp)
 40f:	89 c3                	mov    %eax,%ebx
 411:	50                   	push   %eax
 412:	e8 73 01 00 00       	call   58a <fstat>
  close(fd);
 417:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 41a:	89 c6                	mov    %eax,%esi
  close(fd);
 41c:	e8 39 01 00 00       	call   55a <close>
  return r;
 421:	83 c4 10             	add    $0x10,%esp
}
 424:	8d 65 f8             	lea    -0x8(%ebp),%esp
 427:	89 f0                	mov    %esi,%eax
 429:	5b                   	pop    %ebx
 42a:	5e                   	pop    %esi
 42b:	5d                   	pop    %ebp
 42c:	c3                   	ret    
 42d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 430:	be ff ff ff ff       	mov    $0xffffffff,%esi
 435:	eb ed                	jmp    424 <stat+0x34>
 437:	89 f6                	mov    %esi,%esi
 439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000440 <atoi>:

int
atoi(const char *s)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	53                   	push   %ebx
 444:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 447:	0f be 11             	movsbl (%ecx),%edx
 44a:	8d 42 d0             	lea    -0x30(%edx),%eax
 44d:	3c 09                	cmp    $0x9,%al
  n = 0;
 44f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 454:	77 1f                	ja     475 <atoi+0x35>
 456:	8d 76 00             	lea    0x0(%esi),%esi
 459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 460:	8d 04 80             	lea    (%eax,%eax,4),%eax
 463:	83 c1 01             	add    $0x1,%ecx
 466:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 46a:	0f be 11             	movsbl (%ecx),%edx
 46d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 470:	80 fb 09             	cmp    $0x9,%bl
 473:	76 eb                	jbe    460 <atoi+0x20>
  return n;
}
 475:	5b                   	pop    %ebx
 476:	5d                   	pop    %ebp
 477:	c3                   	ret    
 478:	90                   	nop
 479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000480 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	56                   	push   %esi
 484:	53                   	push   %ebx
 485:	8b 5d 10             	mov    0x10(%ebp),%ebx
 488:	8b 45 08             	mov    0x8(%ebp),%eax
 48b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 48e:	85 db                	test   %ebx,%ebx
 490:	7e 14                	jle    4a6 <memmove+0x26>
 492:	31 d2                	xor    %edx,%edx
 494:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 498:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 49c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 49f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 4a2:	39 d3                	cmp    %edx,%ebx
 4a4:	75 f2                	jne    498 <memmove+0x18>
  return vdst;
}
 4a6:	5b                   	pop    %ebx
 4a7:	5e                   	pop    %esi
 4a8:	5d                   	pop    %ebp
 4a9:	c3                   	ret    
 4aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004b0 <strcat>:

char *
strcat(char *d,const char *s)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	53                   	push   %ebx
 4b4:	8b 45 08             	mov    0x8(%ebp),%eax
 4b7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *temp = d;
  while (*d)
 4ba:	80 38 00             	cmpb   $0x0,(%eax)
 4bd:	89 c2                	mov    %eax,%edx
 4bf:	74 28                	je     4e9 <strcat+0x39>
 4c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ++d;
 4c8:	83 c2 01             	add    $0x1,%edx
  while (*d)
 4cb:	80 3a 00             	cmpb   $0x0,(%edx)
 4ce:	75 f8                	jne    4c8 <strcat+0x18>
  while (*s)
 4d0:	0f b6 0b             	movzbl (%ebx),%ecx
 4d3:	84 c9                	test   %cl,%cl
 4d5:	74 19                	je     4f0 <strcat+0x40>
 4d7:	89 f6                	mov    %esi,%esi
 4d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    *d++ = *s++;
 4e0:	83 c2 01             	add    $0x1,%edx
 4e3:	83 c3 01             	add    $0x1,%ebx
 4e6:	88 4a ff             	mov    %cl,-0x1(%edx)
  while (*s)
 4e9:	0f b6 0b             	movzbl (%ebx),%ecx
 4ec:	84 c9                	test   %cl,%cl
 4ee:	75 f0                	jne    4e0 <strcat+0x30>
  *d = 0;
 4f0:	c6 02 00             	movb   $0x0,(%edx)
  return temp;
}
 4f3:	5b                   	pop    %ebx
 4f4:	5d                   	pop    %ebp
 4f5:	c3                   	ret    
 4f6:	8d 76 00             	lea    0x0(%esi),%esi
 4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000500 <strncpy>:
char *strncpy(char *s, const char *t, int n)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	56                   	push   %esi
 504:	53                   	push   %ebx
 505:	8b 5d 10             	mov    0x10(%ebp),%ebx
 508:	8b 45 08             	mov    0x8(%ebp),%eax
 50b:	8b 75 0c             	mov    0xc(%ebp),%esi
  int i;
  char *os;
  os = s;
  for (i = 0; i < n; i++)
 50e:	85 db                	test   %ebx,%ebx
 510:	7e 14                	jle    526 <strncpy+0x26>
 512:	31 d2                	xor    %edx,%edx
 514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  {
    s[i] = t[i];
 518:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 51c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
  for (i = 0; i < n; i++)
 51f:	83 c2 01             	add    $0x1,%edx
 522:	39 d3                	cmp    %edx,%ebx
 524:	75 f2                	jne    518 <strncpy+0x18>
  }
  return os;
}
 526:	5b                   	pop    %ebx
 527:	5e                   	pop    %esi
 528:	5d                   	pop    %ebp
 529:	c3                   	ret    

0000052a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 52a:	b8 01 00 00 00       	mov    $0x1,%eax
 52f:	cd 40                	int    $0x40
 531:	c3                   	ret    

00000532 <exit>:
SYSCALL(exit)
 532:	b8 02 00 00 00       	mov    $0x2,%eax
 537:	cd 40                	int    $0x40
 539:	c3                   	ret    

0000053a <wait>:
SYSCALL(wait)
 53a:	b8 03 00 00 00       	mov    $0x3,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    

00000542 <pipe>:
SYSCALL(pipe)
 542:	b8 04 00 00 00       	mov    $0x4,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    

0000054a <read>:
SYSCALL(read)
 54a:	b8 05 00 00 00       	mov    $0x5,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <write>:
SYSCALL(write)
 552:	b8 10 00 00 00       	mov    $0x10,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <close>:
SYSCALL(close)
 55a:	b8 15 00 00 00       	mov    $0x15,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <kill>:
SYSCALL(kill)
 562:	b8 06 00 00 00       	mov    $0x6,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <exec>:
SYSCALL(exec)
 56a:	b8 07 00 00 00       	mov    $0x7,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <open>:
SYSCALL(open)
 572:	b8 0f 00 00 00       	mov    $0xf,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <mknod>:
SYSCALL(mknod)
 57a:	b8 11 00 00 00       	mov    $0x11,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <unlink>:
SYSCALL(unlink)
 582:	b8 12 00 00 00       	mov    $0x12,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <fstat>:
SYSCALL(fstat)
 58a:	b8 08 00 00 00       	mov    $0x8,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <link>:
SYSCALL(link)
 592:	b8 13 00 00 00       	mov    $0x13,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <mkdir>:
SYSCALL(mkdir)
 59a:	b8 14 00 00 00       	mov    $0x14,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <chdir>:
SYSCALL(chdir)
 5a2:	b8 09 00 00 00       	mov    $0x9,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <dup>:
SYSCALL(dup)
 5aa:	b8 0a 00 00 00       	mov    $0xa,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <getpid>:
SYSCALL(getpid)
 5b2:	b8 0b 00 00 00       	mov    $0xb,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <sbrk>:
SYSCALL(sbrk)
 5ba:	b8 0c 00 00 00       	mov    $0xc,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <sleep>:
SYSCALL(sleep)
 5c2:	b8 0d 00 00 00       	mov    $0xd,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <uptime>:
SYSCALL(uptime)
 5ca:	b8 0e 00 00 00       	mov    $0xe,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    
 5d2:	66 90                	xchg   %ax,%ax
 5d4:	66 90                	xchg   %ax,%ax
 5d6:	66 90                	xchg   %ax,%ax
 5d8:	66 90                	xchg   %ax,%ax
 5da:	66 90                	xchg   %ax,%ax
 5dc:	66 90                	xchg   %ax,%ax
 5de:	66 90                	xchg   %ax,%ax

000005e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
 5e4:	56                   	push   %esi
 5e5:	53                   	push   %ebx
 5e6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 5e9:	85 d2                	test   %edx,%edx
{
 5eb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 5ee:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 5f0:	79 76                	jns    668 <printint+0x88>
 5f2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5f6:	74 70                	je     668 <printint+0x88>
    x = -xx;
 5f8:	f7 d8                	neg    %eax
    neg = 1;
 5fa:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 601:	31 f6                	xor    %esi,%esi
 603:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 606:	eb 0a                	jmp    612 <printint+0x32>
 608:	90                   	nop
 609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 610:	89 fe                	mov    %edi,%esi
 612:	31 d2                	xor    %edx,%edx
 614:	8d 7e 01             	lea    0x1(%esi),%edi
 617:	f7 f1                	div    %ecx
 619:	0f b6 92 2c 0a 00 00 	movzbl 0xa2c(%edx),%edx
  }while((x /= base) != 0);
 620:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 622:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 625:	75 e9                	jne    610 <printint+0x30>
  if(neg)
 627:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 62a:	85 c0                	test   %eax,%eax
 62c:	74 08                	je     636 <printint+0x56>
    buf[i++] = '-';
 62e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 633:	8d 7e 02             	lea    0x2(%esi),%edi
 636:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 63a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 63d:	8d 76 00             	lea    0x0(%esi),%esi
 640:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 643:	83 ec 04             	sub    $0x4,%esp
 646:	83 ee 01             	sub    $0x1,%esi
 649:	6a 01                	push   $0x1
 64b:	53                   	push   %ebx
 64c:	57                   	push   %edi
 64d:	88 45 d7             	mov    %al,-0x29(%ebp)
 650:	e8 fd fe ff ff       	call   552 <write>

  while(--i >= 0)
 655:	83 c4 10             	add    $0x10,%esp
 658:	39 de                	cmp    %ebx,%esi
 65a:	75 e4                	jne    640 <printint+0x60>
    putc(fd, buf[i]);
}
 65c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 65f:	5b                   	pop    %ebx
 660:	5e                   	pop    %esi
 661:	5f                   	pop    %edi
 662:	5d                   	pop    %ebp
 663:	c3                   	ret    
 664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 668:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 66f:	eb 90                	jmp    601 <printint+0x21>
 671:	eb 0d                	jmp    680 <printf>
 673:	90                   	nop
 674:	90                   	nop
 675:	90                   	nop
 676:	90                   	nop
 677:	90                   	nop
 678:	90                   	nop
 679:	90                   	nop
 67a:	90                   	nop
 67b:	90                   	nop
 67c:	90                   	nop
 67d:	90                   	nop
 67e:	90                   	nop
 67f:	90                   	nop

00000680 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	53                   	push   %ebx
 686:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 689:	8b 75 0c             	mov    0xc(%ebp),%esi
 68c:	0f b6 1e             	movzbl (%esi),%ebx
 68f:	84 db                	test   %bl,%bl
 691:	0f 84 b3 00 00 00    	je     74a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 697:	8d 45 10             	lea    0x10(%ebp),%eax
 69a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 69d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 69f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 6a2:	eb 2f                	jmp    6d3 <printf+0x53>
 6a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6a8:	83 f8 25             	cmp    $0x25,%eax
 6ab:	0f 84 a7 00 00 00    	je     758 <printf+0xd8>
  write(fd, &c, 1);
 6b1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 6b4:	83 ec 04             	sub    $0x4,%esp
 6b7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 6ba:	6a 01                	push   $0x1
 6bc:	50                   	push   %eax
 6bd:	ff 75 08             	pushl  0x8(%ebp)
 6c0:	e8 8d fe ff ff       	call   552 <write>
 6c5:	83 c4 10             	add    $0x10,%esp
 6c8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 6cb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 6cf:	84 db                	test   %bl,%bl
 6d1:	74 77                	je     74a <printf+0xca>
    if(state == 0){
 6d3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 6d5:	0f be cb             	movsbl %bl,%ecx
 6d8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 6db:	74 cb                	je     6a8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 6dd:	83 ff 25             	cmp    $0x25,%edi
 6e0:	75 e6                	jne    6c8 <printf+0x48>
      if(c == 'd'){
 6e2:	83 f8 64             	cmp    $0x64,%eax
 6e5:	0f 84 05 01 00 00    	je     7f0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 6eb:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 6f1:	83 f9 70             	cmp    $0x70,%ecx
 6f4:	74 72                	je     768 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 6f6:	83 f8 73             	cmp    $0x73,%eax
 6f9:	0f 84 99 00 00 00    	je     798 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 6ff:	83 f8 63             	cmp    $0x63,%eax
 702:	0f 84 08 01 00 00    	je     810 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 708:	83 f8 25             	cmp    $0x25,%eax
 70b:	0f 84 ef 00 00 00    	je     800 <printf+0x180>
  write(fd, &c, 1);
 711:	8d 45 e7             	lea    -0x19(%ebp),%eax
 714:	83 ec 04             	sub    $0x4,%esp
 717:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 71b:	6a 01                	push   $0x1
 71d:	50                   	push   %eax
 71e:	ff 75 08             	pushl  0x8(%ebp)
 721:	e8 2c fe ff ff       	call   552 <write>
 726:	83 c4 0c             	add    $0xc,%esp
 729:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 72c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 72f:	6a 01                	push   $0x1
 731:	50                   	push   %eax
 732:	ff 75 08             	pushl  0x8(%ebp)
 735:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 738:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 73a:	e8 13 fe ff ff       	call   552 <write>
  for(i = 0; fmt[i]; i++){
 73f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 743:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 746:	84 db                	test   %bl,%bl
 748:	75 89                	jne    6d3 <printf+0x53>
    }
  }
}
 74a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 74d:	5b                   	pop    %ebx
 74e:	5e                   	pop    %esi
 74f:	5f                   	pop    %edi
 750:	5d                   	pop    %ebp
 751:	c3                   	ret    
 752:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 758:	bf 25 00 00 00       	mov    $0x25,%edi
 75d:	e9 66 ff ff ff       	jmp    6c8 <printf+0x48>
 762:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 768:	83 ec 0c             	sub    $0xc,%esp
 76b:	b9 10 00 00 00       	mov    $0x10,%ecx
 770:	6a 00                	push   $0x0
 772:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 775:	8b 45 08             	mov    0x8(%ebp),%eax
 778:	8b 17                	mov    (%edi),%edx
 77a:	e8 61 fe ff ff       	call   5e0 <printint>
        ap++;
 77f:	89 f8                	mov    %edi,%eax
 781:	83 c4 10             	add    $0x10,%esp
      state = 0;
 784:	31 ff                	xor    %edi,%edi
        ap++;
 786:	83 c0 04             	add    $0x4,%eax
 789:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 78c:	e9 37 ff ff ff       	jmp    6c8 <printf+0x48>
 791:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 798:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 79b:	8b 08                	mov    (%eax),%ecx
        ap++;
 79d:	83 c0 04             	add    $0x4,%eax
 7a0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 7a3:	85 c9                	test   %ecx,%ecx
 7a5:	0f 84 8e 00 00 00    	je     839 <printf+0x1b9>
        while(*s != 0){
 7ab:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 7ae:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 7b0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 7b2:	84 c0                	test   %al,%al
 7b4:	0f 84 0e ff ff ff    	je     6c8 <printf+0x48>
 7ba:	89 75 d0             	mov    %esi,-0x30(%ebp)
 7bd:	89 de                	mov    %ebx,%esi
 7bf:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7c2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 7c5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7c8:	83 ec 04             	sub    $0x4,%esp
          s++;
 7cb:	83 c6 01             	add    $0x1,%esi
 7ce:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 7d1:	6a 01                	push   $0x1
 7d3:	57                   	push   %edi
 7d4:	53                   	push   %ebx
 7d5:	e8 78 fd ff ff       	call   552 <write>
        while(*s != 0){
 7da:	0f b6 06             	movzbl (%esi),%eax
 7dd:	83 c4 10             	add    $0x10,%esp
 7e0:	84 c0                	test   %al,%al
 7e2:	75 e4                	jne    7c8 <printf+0x148>
 7e4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 7e7:	31 ff                	xor    %edi,%edi
 7e9:	e9 da fe ff ff       	jmp    6c8 <printf+0x48>
 7ee:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 7f0:	83 ec 0c             	sub    $0xc,%esp
 7f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7f8:	6a 01                	push   $0x1
 7fa:	e9 73 ff ff ff       	jmp    772 <printf+0xf2>
 7ff:	90                   	nop
  write(fd, &c, 1);
 800:	83 ec 04             	sub    $0x4,%esp
 803:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 806:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 809:	6a 01                	push   $0x1
 80b:	e9 21 ff ff ff       	jmp    731 <printf+0xb1>
        putc(fd, *ap);
 810:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 813:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 816:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 818:	6a 01                	push   $0x1
        ap++;
 81a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 81d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 820:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 823:	50                   	push   %eax
 824:	ff 75 08             	pushl  0x8(%ebp)
 827:	e8 26 fd ff ff       	call   552 <write>
        ap++;
 82c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 82f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 832:	31 ff                	xor    %edi,%edi
 834:	e9 8f fe ff ff       	jmp    6c8 <printf+0x48>
          s = "(null)";
 839:	bb 25 0a 00 00       	mov    $0xa25,%ebx
        while(*s != 0){
 83e:	b8 28 00 00 00       	mov    $0x28,%eax
 843:	e9 72 ff ff ff       	jmp    7ba <printf+0x13a>
 848:	66 90                	xchg   %ax,%ax
 84a:	66 90                	xchg   %ax,%ax
 84c:	66 90                	xchg   %ax,%ax
 84e:	66 90                	xchg   %ax,%ax

00000850 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 850:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 851:	a1 64 0d 00 00       	mov    0xd64,%eax
{
 856:	89 e5                	mov    %esp,%ebp
 858:	57                   	push   %edi
 859:	56                   	push   %esi
 85a:	53                   	push   %ebx
 85b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 85e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 868:	39 c8                	cmp    %ecx,%eax
 86a:	8b 10                	mov    (%eax),%edx
 86c:	73 32                	jae    8a0 <free+0x50>
 86e:	39 d1                	cmp    %edx,%ecx
 870:	72 04                	jb     876 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 872:	39 d0                	cmp    %edx,%eax
 874:	72 32                	jb     8a8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 876:	8b 73 fc             	mov    -0x4(%ebx),%esi
 879:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 87c:	39 fa                	cmp    %edi,%edx
 87e:	74 30                	je     8b0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 880:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 883:	8b 50 04             	mov    0x4(%eax),%edx
 886:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 889:	39 f1                	cmp    %esi,%ecx
 88b:	74 3a                	je     8c7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 88d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 88f:	a3 64 0d 00 00       	mov    %eax,0xd64
}
 894:	5b                   	pop    %ebx
 895:	5e                   	pop    %esi
 896:	5f                   	pop    %edi
 897:	5d                   	pop    %ebp
 898:	c3                   	ret    
 899:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8a0:	39 d0                	cmp    %edx,%eax
 8a2:	72 04                	jb     8a8 <free+0x58>
 8a4:	39 d1                	cmp    %edx,%ecx
 8a6:	72 ce                	jb     876 <free+0x26>
{
 8a8:	89 d0                	mov    %edx,%eax
 8aa:	eb bc                	jmp    868 <free+0x18>
 8ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 8b0:	03 72 04             	add    0x4(%edx),%esi
 8b3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8b6:	8b 10                	mov    (%eax),%edx
 8b8:	8b 12                	mov    (%edx),%edx
 8ba:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8bd:	8b 50 04             	mov    0x4(%eax),%edx
 8c0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8c3:	39 f1                	cmp    %esi,%ecx
 8c5:	75 c6                	jne    88d <free+0x3d>
    p->s.size += bp->s.size;
 8c7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 8ca:	a3 64 0d 00 00       	mov    %eax,0xd64
    p->s.size += bp->s.size;
 8cf:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8d2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8d5:	89 10                	mov    %edx,(%eax)
}
 8d7:	5b                   	pop    %ebx
 8d8:	5e                   	pop    %esi
 8d9:	5f                   	pop    %edi
 8da:	5d                   	pop    %ebp
 8db:	c3                   	ret    
 8dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8e0:	55                   	push   %ebp
 8e1:	89 e5                	mov    %esp,%ebp
 8e3:	57                   	push   %edi
 8e4:	56                   	push   %esi
 8e5:	53                   	push   %ebx
 8e6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8ec:	8b 15 64 0d 00 00    	mov    0xd64,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f2:	8d 78 07             	lea    0x7(%eax),%edi
 8f5:	c1 ef 03             	shr    $0x3,%edi
 8f8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 8fb:	85 d2                	test   %edx,%edx
 8fd:	0f 84 9d 00 00 00    	je     9a0 <malloc+0xc0>
 903:	8b 02                	mov    (%edx),%eax
 905:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 908:	39 cf                	cmp    %ecx,%edi
 90a:	76 6c                	jbe    978 <malloc+0x98>
 90c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 912:	bb 00 10 00 00       	mov    $0x1000,%ebx
 917:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 91a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 921:	eb 0e                	jmp    931 <malloc+0x51>
 923:	90                   	nop
 924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 928:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 92a:	8b 48 04             	mov    0x4(%eax),%ecx
 92d:	39 f9                	cmp    %edi,%ecx
 92f:	73 47                	jae    978 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 931:	39 05 64 0d 00 00    	cmp    %eax,0xd64
 937:	89 c2                	mov    %eax,%edx
 939:	75 ed                	jne    928 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 93b:	83 ec 0c             	sub    $0xc,%esp
 93e:	56                   	push   %esi
 93f:	e8 76 fc ff ff       	call   5ba <sbrk>
  if(p == (char*)-1)
 944:	83 c4 10             	add    $0x10,%esp
 947:	83 f8 ff             	cmp    $0xffffffff,%eax
 94a:	74 1c                	je     968 <malloc+0x88>
  hp->s.size = nu;
 94c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 94f:	83 ec 0c             	sub    $0xc,%esp
 952:	83 c0 08             	add    $0x8,%eax
 955:	50                   	push   %eax
 956:	e8 f5 fe ff ff       	call   850 <free>
  return freep;
 95b:	8b 15 64 0d 00 00    	mov    0xd64,%edx
      if((p = morecore(nunits)) == 0)
 961:	83 c4 10             	add    $0x10,%esp
 964:	85 d2                	test   %edx,%edx
 966:	75 c0                	jne    928 <malloc+0x48>
        return 0;
  }
}
 968:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 96b:	31 c0                	xor    %eax,%eax
}
 96d:	5b                   	pop    %ebx
 96e:	5e                   	pop    %esi
 96f:	5f                   	pop    %edi
 970:	5d                   	pop    %ebp
 971:	c3                   	ret    
 972:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 978:	39 cf                	cmp    %ecx,%edi
 97a:	74 54                	je     9d0 <malloc+0xf0>
        p->s.size -= nunits;
 97c:	29 f9                	sub    %edi,%ecx
 97e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 981:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 984:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 987:	89 15 64 0d 00 00    	mov    %edx,0xd64
}
 98d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 990:	83 c0 08             	add    $0x8,%eax
}
 993:	5b                   	pop    %ebx
 994:	5e                   	pop    %esi
 995:	5f                   	pop    %edi
 996:	5d                   	pop    %ebp
 997:	c3                   	ret    
 998:	90                   	nop
 999:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 9a0:	c7 05 64 0d 00 00 68 	movl   $0xd68,0xd64
 9a7:	0d 00 00 
 9aa:	c7 05 68 0d 00 00 68 	movl   $0xd68,0xd68
 9b1:	0d 00 00 
    base.s.size = 0;
 9b4:	b8 68 0d 00 00       	mov    $0xd68,%eax
 9b9:	c7 05 6c 0d 00 00 00 	movl   $0x0,0xd6c
 9c0:	00 00 00 
 9c3:	e9 44 ff ff ff       	jmp    90c <malloc+0x2c>
 9c8:	90                   	nop
 9c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 9d0:	8b 08                	mov    (%eax),%ecx
 9d2:	89 0a                	mov    %ecx,(%edx)
 9d4:	eb b1                	jmp    987 <malloc+0xa7>
