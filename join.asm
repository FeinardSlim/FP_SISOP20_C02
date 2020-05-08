
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
  21:	68 18 0a 00 00       	push   $0xa18
  26:	6a 01                	push   $0x1
  28:	e8 93 06 00 00       	call   6c0 <printf>
		exit();
  2d:	e8 40 05 00 00       	call   572 <exit>
	}
	int file1,file2;
	if ((file1 = open(argv[1], 0)) < 0)
  32:	50                   	push   %eax
  33:	50                   	push   %eax
  34:	6a 00                	push   $0x0
  36:	ff 73 04             	pushl  0x4(%ebx)
  39:	e8 74 05 00 00       	call   5b2 <open>
  3e:	83 c4 10             	add    $0x10,%esp
  41:	85 c0                	test   %eax,%eax
  43:	89 85 a4 f2 fc ff    	mov    %eax,-0x30d5c(%ebp)
  49:	0f 88 4b 01 00 00    	js     19a <main+0x19a>
	{ // Error handling : cannot read file 1
		printf(1, "Failed to read files %s\n", argv[1]);
		exit();
	}
	if ((file2 = open(argv[2], 0)) < 0)
  4f:	50                   	push   %eax
  50:	50                   	push   %eax
  51:	6a 00                	push   $0x0
  53:	ff 73 08             	pushl  0x8(%ebx)
  56:	e8 57 05 00 00       	call   5b2 <open>
  5b:	83 c4 10             	add    $0x10,%esp
  5e:	85 c0                	test   %eax,%eax
  60:	89 85 a0 f2 fc ff    	mov    %eax,-0x30d60(%ebp)
  66:	0f 88 43 01 00 00    	js     1af <main+0x1af>
	{ // Error handling : cannot read file 2
		printf(1, "failed to read %s\n", argv[2]);
		exit();
	}
	read(file1, buf1, sizeof(buf1));
  6c:	51                   	push   %ecx
  6d:	68 a0 86 01 00       	push   $0x186a0
  72:	68 c0 0d 00 00       	push   $0xdc0
  77:	ff b5 a4 f2 fc ff    	pushl  -0x30d5c(%ebp)
  7d:	e8 08 05 00 00       	call   58a <read>
	read(file2, buf2, sizeof(buf2));
  82:	83 c4 0c             	add    $0xc,%esp
  85:	68 a0 86 01 00       	push   $0x186a0
  8a:	68 60 94 01 00       	push   $0x19460
  8f:	ff b5 a0 f2 fc ff    	pushl  -0x30d60(%ebp)
  95:	e8 f0 04 00 00       	call   58a <read>
	int maxLine = 0;
	char *pch = strtok(buf1, " \n");
  9a:	5b                   	pop    %ebx
  9b:	5e                   	pop    %esi
  9c:	68 5b 0a 00 00       	push   $0xa5b
  a1:	68 c0 0d 00 00       	push   $0xdc0
  a6:	e8 45 01 00 00       	call   1f0 <strtok>
	int temp = 0;
	maxLine = 0;
	while (pch != NULL)
  ab:	83 c4 10             	add    $0x10,%esp
  ae:	85 c0                	test   %eax,%eax
  b0:	0f 84 0e 01 00 00    	je     1c4 <main+0x1c4>
  b6:	8d 9d a8 f2 fc ff    	lea    -0x30d58(%ebp),%ebx
	int temp = 0;
  bc:	31 f6                	xor    %esi,%esi
  be:	66 90                	xchg   %ax,%ax
	{
		strcpy(datafile1[temp].array,pch);
  c0:	83 ec 08             	sub    $0x8,%esp
		pch = strtok(NULL," \n");
		temp++;
  c3:	83 c6 01             	add    $0x1,%esi
		strcpy(datafile1[temp].array,pch);
  c6:	50                   	push   %eax
  c7:	53                   	push   %ebx
  c8:	81 c3 e8 03 00 00    	add    $0x3e8,%ebx
  ce:	e8 cd 01 00 00       	call   2a0 <strcpy>
		pch = strtok(NULL," \n");
  d3:	58                   	pop    %eax
  d4:	5a                   	pop    %edx
  d5:	68 5b 0a 00 00       	push   $0xa5b
  da:	6a 00                	push   $0x0
  dc:	e8 0f 01 00 00       	call   1f0 <strtok>
	while (pch != NULL)
  e1:	83 c4 10             	add    $0x10,%esp
  e4:	85 c0                	test   %eax,%eax
  e6:	75 d8                	jne    c0 <main+0xc0>
	}
	maxLine = temp;
	temp = 0;
	char *data = strtok(buf2," \n");
  e8:	50                   	push   %eax
  e9:	50                   	push   %eax
  ea:	68 5b 0a 00 00       	push   $0xa5b
  ef:	68 60 94 01 00       	push   $0x19460
  f4:	e8 f7 00 00 00       	call   1f0 <strtok>
	while (data != NULL)
  f9:	83 c4 10             	add    $0x10,%esp
  fc:	85 c0                	test   %eax,%eax
  fe:	74 7b                	je     17b <main+0x17b>
 100:	8d bd 48 79 fe ff    	lea    -0x186b8(%ebp),%edi
	int temp = 0;
 106:	31 db                	xor    %ebx,%ebx
 108:	90                   	nop
 109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	{
		strcpy(datafile2[temp].array,data);
 110:	83 ec 08             	sub    $0x8,%esp
		data = strtok(NULL," \n");
		temp++;
 113:	83 c3 01             	add    $0x1,%ebx
		strcpy(datafile2[temp].array,data);
 116:	50                   	push   %eax
 117:	57                   	push   %edi
 118:	81 c7 e8 03 00 00    	add    $0x3e8,%edi
 11e:	e8 7d 01 00 00       	call   2a0 <strcpy>
		data = strtok(NULL," \n");
 123:	59                   	pop    %ecx
 124:	58                   	pop    %eax
 125:	68 5b 0a 00 00       	push   $0xa5b
 12a:	6a 00                	push   $0x0
 12c:	e8 bf 00 00 00       	call   1f0 <strtok>
	while (data != NULL)
 131:	83 c4 10             	add    $0x10,%esp
 134:	85 c0                	test   %eax,%eax
 136:	75 d8                	jne    110 <main+0x110>
 138:	39 de                	cmp    %ebx,%esi
 13a:	0f 4e de             	cmovle %esi,%ebx
	}
	if(temp < maxLine) maxLine = temp;
	int  i = 0;
	while (i < maxLine)
 13d:	85 db                	test   %ebx,%ebx
 13f:	74 3a                	je     17b <main+0x17b>
 141:	69 db e8 03 00 00    	imul   $0x3e8,%ebx,%ebx
 147:	31 f6                	xor    %esi,%esi
 149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	{
		printf(1,"%s %s\n",datafile1[i].array,datafile2[i].array);
 150:	8d 85 48 79 fe ff    	lea    -0x186b8(%ebp),%eax
 156:	01 f0                	add    %esi,%eax
 158:	50                   	push   %eax
 159:	8d 85 a8 f2 fc ff    	lea    -0x30d58(%ebp),%eax
 15f:	01 f0                	add    %esi,%eax
 161:	81 c6 e8 03 00 00    	add    $0x3e8,%esi
 167:	50                   	push   %eax
 168:	68 5e 0a 00 00       	push   $0xa5e
 16d:	6a 01                	push   $0x1
 16f:	e8 4c 05 00 00       	call   6c0 <printf>
	while (i < maxLine)
 174:	83 c4 10             	add    $0x10,%esp
 177:	39 de                	cmp    %ebx,%esi
 179:	75 d5                	jne    150 <main+0x150>
		i++;
	}
	
	close(file1);
 17b:	83 ec 0c             	sub    $0xc,%esp
 17e:	ff b5 a4 f2 fc ff    	pushl  -0x30d5c(%ebp)
 184:	e8 11 04 00 00       	call   59a <close>
	close(file2);
 189:	5a                   	pop    %edx
 18a:	ff b5 a0 f2 fc ff    	pushl  -0x30d60(%ebp)
 190:	e8 05 04 00 00       	call   59a <close>
	exit();
 195:	e8 d8 03 00 00       	call   572 <exit>
		printf(1, "Failed to read files %s\n", argv[1]);
 19a:	50                   	push   %eax
 19b:	ff 73 04             	pushl  0x4(%ebx)
 19e:	68 2f 0a 00 00       	push   $0xa2f
 1a3:	6a 01                	push   $0x1
 1a5:	e8 16 05 00 00       	call   6c0 <printf>
		exit();
 1aa:	e8 c3 03 00 00       	call   572 <exit>
		printf(1, "failed to read %s\n", argv[2]);
 1af:	57                   	push   %edi
 1b0:	ff 73 08             	pushl  0x8(%ebx)
 1b3:	68 48 0a 00 00       	push   $0xa48
 1b8:	6a 01                	push   $0x1
 1ba:	e8 01 05 00 00       	call   6c0 <printf>
		exit();
 1bf:	e8 ae 03 00 00       	call   572 <exit>
	char *data = strtok(buf2," \n");
 1c4:	50                   	push   %eax
 1c5:	50                   	push   %eax
	int temp = 0;
 1c6:	31 f6                	xor    %esi,%esi
	char *data = strtok(buf2," \n");
 1c8:	68 5b 0a 00 00       	push   $0xa5b
 1cd:	68 60 94 01 00       	push   $0x19460
 1d2:	e8 19 00 00 00       	call   1f0 <strtok>
	while (data != NULL)
 1d7:	83 c4 10             	add    $0x10,%esp
 1da:	85 c0                	test   %eax,%eax
 1dc:	0f 85 1e ff ff ff    	jne    100 <main+0x100>
 1e2:	eb 97                	jmp    17b <main+0x17b>
 1e4:	66 90                	xchg   %ax,%ax
 1e6:	66 90                	xchg   %ax,%ax
 1e8:	66 90                	xchg   %ax,%ax
 1ea:	66 90                	xchg   %ax,%ax
 1ec:	66 90                	xchg   %ax,%ax
 1ee:	66 90                	xchg   %ax,%ax

000001f0 <strtok>:
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	57                   	push   %edi
 1f4:	56                   	push   %esi
	if (s == NULL && (s = last) == NULL)
 1f5:	8b 45 08             	mov    0x8(%ebp),%eax
{
 1f8:	53                   	push   %ebx
	if (s == NULL && (s = last) == NULL)
 1f9:	85 c0                	test   %eax,%eax
 1fb:	74 7b                	je     278 <strtok+0x88>
 1fd:	8b 5d 08             	mov    0x8(%ebp),%ebx
	c = *s++;
 200:	8d 73 01             	lea    0x1(%ebx),%esi
	for (spanp = (char *)delim; (sc = *spanp++) != 0;)
 203:	8b 45 0c             	mov    0xc(%ebp),%eax
	c = *s++;
 206:	0f be 4e ff          	movsbl -0x1(%esi),%ecx
	for (spanp = (char *)delim; (sc = *spanp++) != 0;)
 20a:	eb 08                	jmp    214 <strtok+0x24>
 20c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		if (c == sc)
 210:	39 d1                	cmp    %edx,%ecx
 212:	74 4c                	je     260 <strtok+0x70>
	for (spanp = (char *)delim; (sc = *spanp++) != 0;)
 214:	83 c0 01             	add    $0x1,%eax
 217:	0f be 50 ff          	movsbl -0x1(%eax),%edx
 21b:	85 d2                	test   %edx,%edx
 21d:	75 f1                	jne    210 <strtok+0x20>
	if (c == 0)
 21f:	85 c9                	test   %ecx,%ecx
 221:	89 5d 08             	mov    %ebx,0x8(%ebp)
 224:	74 66                	je     28c <strtok+0x9c>
		c = *s++;
 226:	8d 7e 01             	lea    0x1(%esi),%edi
		spanp = (char *)delim;
 229:	8b 45 0c             	mov    0xc(%ebp),%eax
		c = *s++;
 22c:	0f b6 5f ff          	movzbl -0x1(%edi),%ebx
 230:	eb 0a                	jmp    23c <strtok+0x4c>
 232:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		} while (sc != 0);
 238:	85 c9                	test   %ecx,%ecx
 23a:	74 2c                	je     268 <strtok+0x78>
			if ((sc = *spanp++) == c)
 23c:	83 c0 01             	add    $0x1,%eax
 23f:	0f be 48 ff          	movsbl -0x1(%eax),%ecx
 243:	38 cb                	cmp    %cl,%bl
 245:	75 f1                	jne    238 <strtok+0x48>
				if (c == 0)
 247:	85 c9                	test   %ecx,%ecx
 249:	74 25                	je     270 <strtok+0x80>
					s[-1] = 0;
 24b:	c6 06 00             	movb   $0x0,(%esi)
				return (tok);
 24e:	8b 45 08             	mov    0x8(%ebp),%eax
				last = s;
 251:	89 3d a0 0d 00 00    	mov    %edi,0xda0
}
 257:	5b                   	pop    %ebx
 258:	5e                   	pop    %esi
 259:	5f                   	pop    %edi
 25a:	5d                   	pop    %ebp
 25b:	c3                   	ret    
 25c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
cont:
 260:	89 f3                	mov    %esi,%ebx
 262:	eb 9c                	jmp    200 <strtok+0x10>
 264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 268:	89 fe                	mov    %edi,%esi
 26a:	eb ba                	jmp    226 <strtok+0x36>
 26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
					s = NULL;
 270:	31 ff                	xor    %edi,%edi
 272:	eb da                	jmp    24e <strtok+0x5e>
 274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	if (s == NULL && (s = last) == NULL)
 278:	a1 a0 0d 00 00       	mov    0xda0,%eax
 27d:	85 c0                	test   %eax,%eax
 27f:	89 45 08             	mov    %eax,0x8(%ebp)
 282:	0f 85 75 ff ff ff    	jne    1fd <strtok+0xd>
		return (NULL);
 288:	31 c0                	xor    %eax,%eax
 28a:	eb cb                	jmp    257 <strtok+0x67>
		last = NULL;
 28c:	c7 05 a0 0d 00 00 00 	movl   $0x0,0xda0
 293:	00 00 00 
		return (NULL);
 296:	31 c0                	xor    %eax,%eax
 298:	eb bd                	jmp    257 <strtok+0x67>
 29a:	66 90                	xchg   %ax,%ax
 29c:	66 90                	xchg   %ax,%ax
 29e:	66 90                	xchg   %ax,%ax

000002a0 <strcpy>:
#include "x86.h"
#include "fcntl.h"

char*
strcpy(char *s, const char *t)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	53                   	push   %ebx
 2a4:	8b 45 08             	mov    0x8(%ebp),%eax
 2a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2aa:	89 c2                	mov    %eax,%edx
 2ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2b0:	83 c1 01             	add    $0x1,%ecx
 2b3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 2b7:	83 c2 01             	add    $0x1,%edx
 2ba:	84 db                	test   %bl,%bl
 2bc:	88 5a ff             	mov    %bl,-0x1(%edx)
 2bf:	75 ef                	jne    2b0 <strcpy+0x10>
    ;
  return os;
}
 2c1:	5b                   	pop    %ebx
 2c2:	5d                   	pop    %ebp
 2c3:	c3                   	ret    
 2c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	53                   	push   %ebx
 2d4:	8b 55 08             	mov    0x8(%ebp),%edx
 2d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2da:	0f b6 02             	movzbl (%edx),%eax
 2dd:	0f b6 19             	movzbl (%ecx),%ebx
 2e0:	84 c0                	test   %al,%al
 2e2:	75 1c                	jne    300 <strcmp+0x30>
 2e4:	eb 2a                	jmp    310 <strcmp+0x40>
 2e6:	8d 76 00             	lea    0x0(%esi),%esi
 2e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 2f0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 2f3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 2f6:	83 c1 01             	add    $0x1,%ecx
 2f9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 2fc:	84 c0                	test   %al,%al
 2fe:	74 10                	je     310 <strcmp+0x40>
 300:	38 d8                	cmp    %bl,%al
 302:	74 ec                	je     2f0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 304:	29 d8                	sub    %ebx,%eax
}
 306:	5b                   	pop    %ebx
 307:	5d                   	pop    %ebp
 308:	c3                   	ret    
 309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 310:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 312:	29 d8                	sub    %ebx,%eax
}
 314:	5b                   	pop    %ebx
 315:	5d                   	pop    %ebp
 316:	c3                   	ret    
 317:	89 f6                	mov    %esi,%esi
 319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000320 <strlen>:

uint
strlen(const char *s)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 326:	80 39 00             	cmpb   $0x0,(%ecx)
 329:	74 15                	je     340 <strlen+0x20>
 32b:	31 d2                	xor    %edx,%edx
 32d:	8d 76 00             	lea    0x0(%esi),%esi
 330:	83 c2 01             	add    $0x1,%edx
 333:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 337:	89 d0                	mov    %edx,%eax
 339:	75 f5                	jne    330 <strlen+0x10>
    ;
  return n;
}
 33b:	5d                   	pop    %ebp
 33c:	c3                   	ret    
 33d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 340:	31 c0                	xor    %eax,%eax
}
 342:	5d                   	pop    %ebp
 343:	c3                   	ret    
 344:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 34a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000350 <memset>:

void*
memset(void *dst, int c, uint n)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 357:	8b 4d 10             	mov    0x10(%ebp),%ecx
 35a:	8b 45 0c             	mov    0xc(%ebp),%eax
 35d:	89 d7                	mov    %edx,%edi
 35f:	fc                   	cld    
 360:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 362:	89 d0                	mov    %edx,%eax
 364:	5f                   	pop    %edi
 365:	5d                   	pop    %ebp
 366:	c3                   	ret    
 367:	89 f6                	mov    %esi,%esi
 369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000370 <strchr>:

char*
strchr(const char *s, char c)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
 374:	8b 45 08             	mov    0x8(%ebp),%eax
 377:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 37a:	0f b6 10             	movzbl (%eax),%edx
 37d:	84 d2                	test   %dl,%dl
 37f:	74 1d                	je     39e <strchr+0x2e>
    if(*s == c)
 381:	38 d3                	cmp    %dl,%bl
 383:	89 d9                	mov    %ebx,%ecx
 385:	75 0d                	jne    394 <strchr+0x24>
 387:	eb 17                	jmp    3a0 <strchr+0x30>
 389:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 390:	38 ca                	cmp    %cl,%dl
 392:	74 0c                	je     3a0 <strchr+0x30>
  for(; *s; s++)
 394:	83 c0 01             	add    $0x1,%eax
 397:	0f b6 10             	movzbl (%eax),%edx
 39a:	84 d2                	test   %dl,%dl
 39c:	75 f2                	jne    390 <strchr+0x20>
      return (char*)s;
  return 0;
 39e:	31 c0                	xor    %eax,%eax
}
 3a0:	5b                   	pop    %ebx
 3a1:	5d                   	pop    %ebp
 3a2:	c3                   	ret    
 3a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003b0 <gets>:

char*
gets(char *buf, int max)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	57                   	push   %edi
 3b4:	56                   	push   %esi
 3b5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 3b6:	31 f6                	xor    %esi,%esi
 3b8:	89 f3                	mov    %esi,%ebx
{
 3ba:	83 ec 1c             	sub    $0x1c,%esp
 3bd:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 3c0:	eb 2f                	jmp    3f1 <gets+0x41>
 3c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 3c8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3cb:	83 ec 04             	sub    $0x4,%esp
 3ce:	6a 01                	push   $0x1
 3d0:	50                   	push   %eax
 3d1:	6a 00                	push   $0x0
 3d3:	e8 b2 01 00 00       	call   58a <read>
    if(cc < 1)
 3d8:	83 c4 10             	add    $0x10,%esp
 3db:	85 c0                	test   %eax,%eax
 3dd:	7e 1c                	jle    3fb <gets+0x4b>
      break;
    buf[i++] = c;
 3df:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3e3:	83 c7 01             	add    $0x1,%edi
 3e6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 3e9:	3c 0a                	cmp    $0xa,%al
 3eb:	74 23                	je     410 <gets+0x60>
 3ed:	3c 0d                	cmp    $0xd,%al
 3ef:	74 1f                	je     410 <gets+0x60>
  for(i=0; i+1 < max; ){
 3f1:	83 c3 01             	add    $0x1,%ebx
 3f4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3f7:	89 fe                	mov    %edi,%esi
 3f9:	7c cd                	jl     3c8 <gets+0x18>
 3fb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 3fd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 400:	c6 03 00             	movb   $0x0,(%ebx)
}
 403:	8d 65 f4             	lea    -0xc(%ebp),%esp
 406:	5b                   	pop    %ebx
 407:	5e                   	pop    %esi
 408:	5f                   	pop    %edi
 409:	5d                   	pop    %ebp
 40a:	c3                   	ret    
 40b:	90                   	nop
 40c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 410:	8b 75 08             	mov    0x8(%ebp),%esi
 413:	8b 45 08             	mov    0x8(%ebp),%eax
 416:	01 de                	add    %ebx,%esi
 418:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 41a:	c6 03 00             	movb   $0x0,(%ebx)
}
 41d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 420:	5b                   	pop    %ebx
 421:	5e                   	pop    %esi
 422:	5f                   	pop    %edi
 423:	5d                   	pop    %ebp
 424:	c3                   	ret    
 425:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000430 <stat>:

int
stat(const char *n, struct stat *st)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	56                   	push   %esi
 434:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 435:	83 ec 08             	sub    $0x8,%esp
 438:	6a 00                	push   $0x0
 43a:	ff 75 08             	pushl  0x8(%ebp)
 43d:	e8 70 01 00 00       	call   5b2 <open>
  if(fd < 0)
 442:	83 c4 10             	add    $0x10,%esp
 445:	85 c0                	test   %eax,%eax
 447:	78 27                	js     470 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 449:	83 ec 08             	sub    $0x8,%esp
 44c:	ff 75 0c             	pushl  0xc(%ebp)
 44f:	89 c3                	mov    %eax,%ebx
 451:	50                   	push   %eax
 452:	e8 73 01 00 00       	call   5ca <fstat>
  close(fd);
 457:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 45a:	89 c6                	mov    %eax,%esi
  close(fd);
 45c:	e8 39 01 00 00       	call   59a <close>
  return r;
 461:	83 c4 10             	add    $0x10,%esp
}
 464:	8d 65 f8             	lea    -0x8(%ebp),%esp
 467:	89 f0                	mov    %esi,%eax
 469:	5b                   	pop    %ebx
 46a:	5e                   	pop    %esi
 46b:	5d                   	pop    %ebp
 46c:	c3                   	ret    
 46d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 470:	be ff ff ff ff       	mov    $0xffffffff,%esi
 475:	eb ed                	jmp    464 <stat+0x34>
 477:	89 f6                	mov    %esi,%esi
 479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000480 <atoi>:

int
atoi(const char *s)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	53                   	push   %ebx
 484:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 487:	0f be 11             	movsbl (%ecx),%edx
 48a:	8d 42 d0             	lea    -0x30(%edx),%eax
 48d:	3c 09                	cmp    $0x9,%al
  n = 0;
 48f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 494:	77 1f                	ja     4b5 <atoi+0x35>
 496:	8d 76 00             	lea    0x0(%esi),%esi
 499:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 4a0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 4a3:	83 c1 01             	add    $0x1,%ecx
 4a6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 4aa:	0f be 11             	movsbl (%ecx),%edx
 4ad:	8d 5a d0             	lea    -0x30(%edx),%ebx
 4b0:	80 fb 09             	cmp    $0x9,%bl
 4b3:	76 eb                	jbe    4a0 <atoi+0x20>
  return n;
}
 4b5:	5b                   	pop    %ebx
 4b6:	5d                   	pop    %ebp
 4b7:	c3                   	ret    
 4b8:	90                   	nop
 4b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	56                   	push   %esi
 4c4:	53                   	push   %ebx
 4c5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4c8:	8b 45 08             	mov    0x8(%ebp),%eax
 4cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4ce:	85 db                	test   %ebx,%ebx
 4d0:	7e 14                	jle    4e6 <memmove+0x26>
 4d2:	31 d2                	xor    %edx,%edx
 4d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 4d8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 4dc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 4df:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 4e2:	39 d3                	cmp    %edx,%ebx
 4e4:	75 f2                	jne    4d8 <memmove+0x18>
  return vdst;
}
 4e6:	5b                   	pop    %ebx
 4e7:	5e                   	pop    %esi
 4e8:	5d                   	pop    %ebp
 4e9:	c3                   	ret    
 4ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004f0 <strcat>:

char *
strcat(char *d,const char *s)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	53                   	push   %ebx
 4f4:	8b 45 08             	mov    0x8(%ebp),%eax
 4f7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *temp = d;
  while (*d)
 4fa:	80 38 00             	cmpb   $0x0,(%eax)
 4fd:	89 c2                	mov    %eax,%edx
 4ff:	74 28                	je     529 <strcat+0x39>
 501:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ++d;
 508:	83 c2 01             	add    $0x1,%edx
  while (*d)
 50b:	80 3a 00             	cmpb   $0x0,(%edx)
 50e:	75 f8                	jne    508 <strcat+0x18>
  while (*s)
 510:	0f b6 0b             	movzbl (%ebx),%ecx
 513:	84 c9                	test   %cl,%cl
 515:	74 19                	je     530 <strcat+0x40>
 517:	89 f6                	mov    %esi,%esi
 519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    *d++ = *s++;
 520:	83 c2 01             	add    $0x1,%edx
 523:	83 c3 01             	add    $0x1,%ebx
 526:	88 4a ff             	mov    %cl,-0x1(%edx)
  while (*s)
 529:	0f b6 0b             	movzbl (%ebx),%ecx
 52c:	84 c9                	test   %cl,%cl
 52e:	75 f0                	jne    520 <strcat+0x30>
  *d = 0;
 530:	c6 02 00             	movb   $0x0,(%edx)
  return temp;
}
 533:	5b                   	pop    %ebx
 534:	5d                   	pop    %ebp
 535:	c3                   	ret    
 536:	8d 76 00             	lea    0x0(%esi),%esi
 539:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000540 <strncpy>:
char *strncpy(char *s, const char *t, int n)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	56                   	push   %esi
 544:	53                   	push   %ebx
 545:	8b 5d 10             	mov    0x10(%ebp),%ebx
 548:	8b 45 08             	mov    0x8(%ebp),%eax
 54b:	8b 75 0c             	mov    0xc(%ebp),%esi
  int i;
  char *os;
  os = s;
  for (i = 0; i < n; i++)
 54e:	85 db                	test   %ebx,%ebx
 550:	7e 14                	jle    566 <strncpy+0x26>
 552:	31 d2                	xor    %edx,%edx
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  {
    s[i] = t[i];
 558:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 55c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
  for (i = 0; i < n; i++)
 55f:	83 c2 01             	add    $0x1,%edx
 562:	39 d3                	cmp    %edx,%ebx
 564:	75 f2                	jne    558 <strncpy+0x18>
  }
  return os;
}
 566:	5b                   	pop    %ebx
 567:	5e                   	pop    %esi
 568:	5d                   	pop    %ebp
 569:	c3                   	ret    

0000056a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 56a:	b8 01 00 00 00       	mov    $0x1,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <exit>:
SYSCALL(exit)
 572:	b8 02 00 00 00       	mov    $0x2,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <wait>:
SYSCALL(wait)
 57a:	b8 03 00 00 00       	mov    $0x3,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <pipe>:
SYSCALL(pipe)
 582:	b8 04 00 00 00       	mov    $0x4,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <read>:
SYSCALL(read)
 58a:	b8 05 00 00 00       	mov    $0x5,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <write>:
SYSCALL(write)
 592:	b8 10 00 00 00       	mov    $0x10,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <close>:
SYSCALL(close)
 59a:	b8 15 00 00 00       	mov    $0x15,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <kill>:
SYSCALL(kill)
 5a2:	b8 06 00 00 00       	mov    $0x6,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <exec>:
SYSCALL(exec)
 5aa:	b8 07 00 00 00       	mov    $0x7,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <open>:
SYSCALL(open)
 5b2:	b8 0f 00 00 00       	mov    $0xf,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <mknod>:
SYSCALL(mknod)
 5ba:	b8 11 00 00 00       	mov    $0x11,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <unlink>:
SYSCALL(unlink)
 5c2:	b8 12 00 00 00       	mov    $0x12,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <fstat>:
SYSCALL(fstat)
 5ca:	b8 08 00 00 00       	mov    $0x8,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <link>:
SYSCALL(link)
 5d2:	b8 13 00 00 00       	mov    $0x13,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <mkdir>:
SYSCALL(mkdir)
 5da:	b8 14 00 00 00       	mov    $0x14,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <chdir>:
SYSCALL(chdir)
 5e2:	b8 09 00 00 00       	mov    $0x9,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <dup>:
SYSCALL(dup)
 5ea:	b8 0a 00 00 00       	mov    $0xa,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <getpid>:
SYSCALL(getpid)
 5f2:	b8 0b 00 00 00       	mov    $0xb,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <sbrk>:
SYSCALL(sbrk)
 5fa:	b8 0c 00 00 00       	mov    $0xc,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <sleep>:
SYSCALL(sleep)
 602:	b8 0d 00 00 00       	mov    $0xd,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <uptime>:
SYSCALL(uptime)
 60a:	b8 0e 00 00 00       	mov    $0xe,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    
 612:	66 90                	xchg   %ax,%ax
 614:	66 90                	xchg   %ax,%ax
 616:	66 90                	xchg   %ax,%ax
 618:	66 90                	xchg   %ax,%ax
 61a:	66 90                	xchg   %ax,%ax
 61c:	66 90                	xchg   %ax,%ax
 61e:	66 90                	xchg   %ax,%ax

00000620 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	57                   	push   %edi
 624:	56                   	push   %esi
 625:	53                   	push   %ebx
 626:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 629:	85 d2                	test   %edx,%edx
{
 62b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 62e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 630:	79 76                	jns    6a8 <printint+0x88>
 632:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 636:	74 70                	je     6a8 <printint+0x88>
    x = -xx;
 638:	f7 d8                	neg    %eax
    neg = 1;
 63a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 641:	31 f6                	xor    %esi,%esi
 643:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 646:	eb 0a                	jmp    652 <printint+0x32>
 648:	90                   	nop
 649:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 650:	89 fe                	mov    %edi,%esi
 652:	31 d2                	xor    %edx,%edx
 654:	8d 7e 01             	lea    0x1(%esi),%edi
 657:	f7 f1                	div    %ecx
 659:	0f b6 92 6c 0a 00 00 	movzbl 0xa6c(%edx),%edx
  }while((x /= base) != 0);
 660:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 662:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 665:	75 e9                	jne    650 <printint+0x30>
  if(neg)
 667:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 66a:	85 c0                	test   %eax,%eax
 66c:	74 08                	je     676 <printint+0x56>
    buf[i++] = '-';
 66e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 673:	8d 7e 02             	lea    0x2(%esi),%edi
 676:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 67a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 67d:	8d 76 00             	lea    0x0(%esi),%esi
 680:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 683:	83 ec 04             	sub    $0x4,%esp
 686:	83 ee 01             	sub    $0x1,%esi
 689:	6a 01                	push   $0x1
 68b:	53                   	push   %ebx
 68c:	57                   	push   %edi
 68d:	88 45 d7             	mov    %al,-0x29(%ebp)
 690:	e8 fd fe ff ff       	call   592 <write>

  while(--i >= 0)
 695:	83 c4 10             	add    $0x10,%esp
 698:	39 de                	cmp    %ebx,%esi
 69a:	75 e4                	jne    680 <printint+0x60>
    putc(fd, buf[i]);
}
 69c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 69f:	5b                   	pop    %ebx
 6a0:	5e                   	pop    %esi
 6a1:	5f                   	pop    %edi
 6a2:	5d                   	pop    %ebp
 6a3:	c3                   	ret    
 6a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6a8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6af:	eb 90                	jmp    641 <printint+0x21>
 6b1:	eb 0d                	jmp    6c0 <printf>
 6b3:	90                   	nop
 6b4:	90                   	nop
 6b5:	90                   	nop
 6b6:	90                   	nop
 6b7:	90                   	nop
 6b8:	90                   	nop
 6b9:	90                   	nop
 6ba:	90                   	nop
 6bb:	90                   	nop
 6bc:	90                   	nop
 6bd:	90                   	nop
 6be:	90                   	nop
 6bf:	90                   	nop

000006c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	53                   	push   %ebx
 6c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6c9:	8b 75 0c             	mov    0xc(%ebp),%esi
 6cc:	0f b6 1e             	movzbl (%esi),%ebx
 6cf:	84 db                	test   %bl,%bl
 6d1:	0f 84 b3 00 00 00    	je     78a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 6d7:	8d 45 10             	lea    0x10(%ebp),%eax
 6da:	83 c6 01             	add    $0x1,%esi
  state = 0;
 6dd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 6df:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 6e2:	eb 2f                	jmp    713 <printf+0x53>
 6e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6e8:	83 f8 25             	cmp    $0x25,%eax
 6eb:	0f 84 a7 00 00 00    	je     798 <printf+0xd8>
  write(fd, &c, 1);
 6f1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 6f4:	83 ec 04             	sub    $0x4,%esp
 6f7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 6fa:	6a 01                	push   $0x1
 6fc:	50                   	push   %eax
 6fd:	ff 75 08             	pushl  0x8(%ebp)
 700:	e8 8d fe ff ff       	call   592 <write>
 705:	83 c4 10             	add    $0x10,%esp
 708:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 70b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 70f:	84 db                	test   %bl,%bl
 711:	74 77                	je     78a <printf+0xca>
    if(state == 0){
 713:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 715:	0f be cb             	movsbl %bl,%ecx
 718:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 71b:	74 cb                	je     6e8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 71d:	83 ff 25             	cmp    $0x25,%edi
 720:	75 e6                	jne    708 <printf+0x48>
      if(c == 'd'){
 722:	83 f8 64             	cmp    $0x64,%eax
 725:	0f 84 05 01 00 00    	je     830 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 72b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 731:	83 f9 70             	cmp    $0x70,%ecx
 734:	74 72                	je     7a8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 736:	83 f8 73             	cmp    $0x73,%eax
 739:	0f 84 99 00 00 00    	je     7d8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 73f:	83 f8 63             	cmp    $0x63,%eax
 742:	0f 84 08 01 00 00    	je     850 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 748:	83 f8 25             	cmp    $0x25,%eax
 74b:	0f 84 ef 00 00 00    	je     840 <printf+0x180>
  write(fd, &c, 1);
 751:	8d 45 e7             	lea    -0x19(%ebp),%eax
 754:	83 ec 04             	sub    $0x4,%esp
 757:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 75b:	6a 01                	push   $0x1
 75d:	50                   	push   %eax
 75e:	ff 75 08             	pushl  0x8(%ebp)
 761:	e8 2c fe ff ff       	call   592 <write>
 766:	83 c4 0c             	add    $0xc,%esp
 769:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 76c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 76f:	6a 01                	push   $0x1
 771:	50                   	push   %eax
 772:	ff 75 08             	pushl  0x8(%ebp)
 775:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 778:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 77a:	e8 13 fe ff ff       	call   592 <write>
  for(i = 0; fmt[i]; i++){
 77f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 783:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 786:	84 db                	test   %bl,%bl
 788:	75 89                	jne    713 <printf+0x53>
    }
  }
}
 78a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 78d:	5b                   	pop    %ebx
 78e:	5e                   	pop    %esi
 78f:	5f                   	pop    %edi
 790:	5d                   	pop    %ebp
 791:	c3                   	ret    
 792:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 798:	bf 25 00 00 00       	mov    $0x25,%edi
 79d:	e9 66 ff ff ff       	jmp    708 <printf+0x48>
 7a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7a8:	83 ec 0c             	sub    $0xc,%esp
 7ab:	b9 10 00 00 00       	mov    $0x10,%ecx
 7b0:	6a 00                	push   $0x0
 7b2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 7b5:	8b 45 08             	mov    0x8(%ebp),%eax
 7b8:	8b 17                	mov    (%edi),%edx
 7ba:	e8 61 fe ff ff       	call   620 <printint>
        ap++;
 7bf:	89 f8                	mov    %edi,%eax
 7c1:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7c4:	31 ff                	xor    %edi,%edi
        ap++;
 7c6:	83 c0 04             	add    $0x4,%eax
 7c9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 7cc:	e9 37 ff ff ff       	jmp    708 <printf+0x48>
 7d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7d8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 7db:	8b 08                	mov    (%eax),%ecx
        ap++;
 7dd:	83 c0 04             	add    $0x4,%eax
 7e0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 7e3:	85 c9                	test   %ecx,%ecx
 7e5:	0f 84 8e 00 00 00    	je     879 <printf+0x1b9>
        while(*s != 0){
 7eb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 7ee:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 7f0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 7f2:	84 c0                	test   %al,%al
 7f4:	0f 84 0e ff ff ff    	je     708 <printf+0x48>
 7fa:	89 75 d0             	mov    %esi,-0x30(%ebp)
 7fd:	89 de                	mov    %ebx,%esi
 7ff:	8b 5d 08             	mov    0x8(%ebp),%ebx
 802:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 805:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 808:	83 ec 04             	sub    $0x4,%esp
          s++;
 80b:	83 c6 01             	add    $0x1,%esi
 80e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 811:	6a 01                	push   $0x1
 813:	57                   	push   %edi
 814:	53                   	push   %ebx
 815:	e8 78 fd ff ff       	call   592 <write>
        while(*s != 0){
 81a:	0f b6 06             	movzbl (%esi),%eax
 81d:	83 c4 10             	add    $0x10,%esp
 820:	84 c0                	test   %al,%al
 822:	75 e4                	jne    808 <printf+0x148>
 824:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 827:	31 ff                	xor    %edi,%edi
 829:	e9 da fe ff ff       	jmp    708 <printf+0x48>
 82e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 830:	83 ec 0c             	sub    $0xc,%esp
 833:	b9 0a 00 00 00       	mov    $0xa,%ecx
 838:	6a 01                	push   $0x1
 83a:	e9 73 ff ff ff       	jmp    7b2 <printf+0xf2>
 83f:	90                   	nop
  write(fd, &c, 1);
 840:	83 ec 04             	sub    $0x4,%esp
 843:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 846:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 849:	6a 01                	push   $0x1
 84b:	e9 21 ff ff ff       	jmp    771 <printf+0xb1>
        putc(fd, *ap);
 850:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 853:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 856:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 858:	6a 01                	push   $0x1
        ap++;
 85a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 85d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 860:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 863:	50                   	push   %eax
 864:	ff 75 08             	pushl  0x8(%ebp)
 867:	e8 26 fd ff ff       	call   592 <write>
        ap++;
 86c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 86f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 872:	31 ff                	xor    %edi,%edi
 874:	e9 8f fe ff ff       	jmp    708 <printf+0x48>
          s = "(null)";
 879:	bb 65 0a 00 00       	mov    $0xa65,%ebx
        while(*s != 0){
 87e:	b8 28 00 00 00       	mov    $0x28,%eax
 883:	e9 72 ff ff ff       	jmp    7fa <printf+0x13a>
 888:	66 90                	xchg   %ax,%ax
 88a:	66 90                	xchg   %ax,%ax
 88c:	66 90                	xchg   %ax,%ax
 88e:	66 90                	xchg   %ax,%ax

00000890 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 890:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 891:	a1 a4 0d 00 00       	mov    0xda4,%eax
{
 896:	89 e5                	mov    %esp,%ebp
 898:	57                   	push   %edi
 899:	56                   	push   %esi
 89a:	53                   	push   %ebx
 89b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 89e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 8a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8a8:	39 c8                	cmp    %ecx,%eax
 8aa:	8b 10                	mov    (%eax),%edx
 8ac:	73 32                	jae    8e0 <free+0x50>
 8ae:	39 d1                	cmp    %edx,%ecx
 8b0:	72 04                	jb     8b6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8b2:	39 d0                	cmp    %edx,%eax
 8b4:	72 32                	jb     8e8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8b6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8b9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8bc:	39 fa                	cmp    %edi,%edx
 8be:	74 30                	je     8f0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 8c0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8c3:	8b 50 04             	mov    0x4(%eax),%edx
 8c6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8c9:	39 f1                	cmp    %esi,%ecx
 8cb:	74 3a                	je     907 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 8cd:	89 08                	mov    %ecx,(%eax)
  freep = p;
 8cf:	a3 a4 0d 00 00       	mov    %eax,0xda4
}
 8d4:	5b                   	pop    %ebx
 8d5:	5e                   	pop    %esi
 8d6:	5f                   	pop    %edi
 8d7:	5d                   	pop    %ebp
 8d8:	c3                   	ret    
 8d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8e0:	39 d0                	cmp    %edx,%eax
 8e2:	72 04                	jb     8e8 <free+0x58>
 8e4:	39 d1                	cmp    %edx,%ecx
 8e6:	72 ce                	jb     8b6 <free+0x26>
{
 8e8:	89 d0                	mov    %edx,%eax
 8ea:	eb bc                	jmp    8a8 <free+0x18>
 8ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 8f0:	03 72 04             	add    0x4(%edx),%esi
 8f3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8f6:	8b 10                	mov    (%eax),%edx
 8f8:	8b 12                	mov    (%edx),%edx
 8fa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8fd:	8b 50 04             	mov    0x4(%eax),%edx
 900:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 903:	39 f1                	cmp    %esi,%ecx
 905:	75 c6                	jne    8cd <free+0x3d>
    p->s.size += bp->s.size;
 907:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 90a:	a3 a4 0d 00 00       	mov    %eax,0xda4
    p->s.size += bp->s.size;
 90f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 912:	8b 53 f8             	mov    -0x8(%ebx),%edx
 915:	89 10                	mov    %edx,(%eax)
}
 917:	5b                   	pop    %ebx
 918:	5e                   	pop    %esi
 919:	5f                   	pop    %edi
 91a:	5d                   	pop    %ebp
 91b:	c3                   	ret    
 91c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000920 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 920:	55                   	push   %ebp
 921:	89 e5                	mov    %esp,%ebp
 923:	57                   	push   %edi
 924:	56                   	push   %esi
 925:	53                   	push   %ebx
 926:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 929:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 92c:	8b 15 a4 0d 00 00    	mov    0xda4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 932:	8d 78 07             	lea    0x7(%eax),%edi
 935:	c1 ef 03             	shr    $0x3,%edi
 938:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 93b:	85 d2                	test   %edx,%edx
 93d:	0f 84 9d 00 00 00    	je     9e0 <malloc+0xc0>
 943:	8b 02                	mov    (%edx),%eax
 945:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 948:	39 cf                	cmp    %ecx,%edi
 94a:	76 6c                	jbe    9b8 <malloc+0x98>
 94c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 952:	bb 00 10 00 00       	mov    $0x1000,%ebx
 957:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 95a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 961:	eb 0e                	jmp    971 <malloc+0x51>
 963:	90                   	nop
 964:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 968:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 96a:	8b 48 04             	mov    0x4(%eax),%ecx
 96d:	39 f9                	cmp    %edi,%ecx
 96f:	73 47                	jae    9b8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 971:	39 05 a4 0d 00 00    	cmp    %eax,0xda4
 977:	89 c2                	mov    %eax,%edx
 979:	75 ed                	jne    968 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 97b:	83 ec 0c             	sub    $0xc,%esp
 97e:	56                   	push   %esi
 97f:	e8 76 fc ff ff       	call   5fa <sbrk>
  if(p == (char*)-1)
 984:	83 c4 10             	add    $0x10,%esp
 987:	83 f8 ff             	cmp    $0xffffffff,%eax
 98a:	74 1c                	je     9a8 <malloc+0x88>
  hp->s.size = nu;
 98c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 98f:	83 ec 0c             	sub    $0xc,%esp
 992:	83 c0 08             	add    $0x8,%eax
 995:	50                   	push   %eax
 996:	e8 f5 fe ff ff       	call   890 <free>
  return freep;
 99b:	8b 15 a4 0d 00 00    	mov    0xda4,%edx
      if((p = morecore(nunits)) == 0)
 9a1:	83 c4 10             	add    $0x10,%esp
 9a4:	85 d2                	test   %edx,%edx
 9a6:	75 c0                	jne    968 <malloc+0x48>
        return 0;
  }
}
 9a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9ab:	31 c0                	xor    %eax,%eax
}
 9ad:	5b                   	pop    %ebx
 9ae:	5e                   	pop    %esi
 9af:	5f                   	pop    %edi
 9b0:	5d                   	pop    %ebp
 9b1:	c3                   	ret    
 9b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9b8:	39 cf                	cmp    %ecx,%edi
 9ba:	74 54                	je     a10 <malloc+0xf0>
        p->s.size -= nunits;
 9bc:	29 f9                	sub    %edi,%ecx
 9be:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9c1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9c4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 9c7:	89 15 a4 0d 00 00    	mov    %edx,0xda4
}
 9cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9d0:	83 c0 08             	add    $0x8,%eax
}
 9d3:	5b                   	pop    %ebx
 9d4:	5e                   	pop    %esi
 9d5:	5f                   	pop    %edi
 9d6:	5d                   	pop    %ebp
 9d7:	c3                   	ret    
 9d8:	90                   	nop
 9d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 9e0:	c7 05 a4 0d 00 00 a8 	movl   $0xda8,0xda4
 9e7:	0d 00 00 
 9ea:	c7 05 a8 0d 00 00 a8 	movl   $0xda8,0xda8
 9f1:	0d 00 00 
    base.s.size = 0;
 9f4:	b8 a8 0d 00 00       	mov    $0xda8,%eax
 9f9:	c7 05 ac 0d 00 00 00 	movl   $0x0,0xdac
 a00:	00 00 00 
 a03:	e9 44 ff ff ff       	jmp    94c <malloc+0x2c>
 a08:	90                   	nop
 a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 a10:	8b 08                	mov    (%eax),%ecx
 a12:	89 0a                	mov    %ecx,(%edx)
 a14:	eb b1                	jmp    9c7 <malloc+0xa7>
