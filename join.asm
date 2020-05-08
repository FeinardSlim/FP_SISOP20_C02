
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
  11:	81 ec 48 0d 03 00    	sub    $0x30d48,%esp
	isi datafile1[100];
	isi datafile2[100];
	if(argc < 3){
  17:	83 39 02             	cmpl   $0x2,(%ecx)
{
  1a:	8b 79 04             	mov    0x4(%ecx),%edi
	if(argc < 3){
  1d:	7f 13                	jg     32 <main+0x32>
		printf(1,"Error:Join files.....\n");
  1f:	50                   	push   %eax
  20:	50                   	push   %eax
  21:	68 88 09 00 00       	push   $0x988
  26:	6a 01                	push   $0x1
  28:	e8 03 06 00 00       	call   630 <printf>
		exit();
  2d:	e8 b0 04 00 00       	call   4e2 <exit>
	}
	int file1,file2;
	if ((file1 = open(argv[1], 0)) < 0)
  32:	50                   	push   %eax
  33:	50                   	push   %eax
  34:	6a 00                	push   $0x0
  36:	ff 77 04             	pushl  0x4(%edi)
  39:	e8 e4 04 00 00       	call   522 <open>
  3e:	83 c4 10             	add    $0x10,%esp
  41:	85 c0                	test   %eax,%eax
  43:	89 c3                	mov    %eax,%ebx
  45:	0f 88 e8 00 00 00    	js     133 <main+0x133>
	{ // Error handling : cannot read file 1
		printf(1, "Failed to read files %s\n", argv[1]);
		exit();
	}
	if ((file2 = open(argv[2], 0)) < 0)
  4b:	50                   	push   %eax
  4c:	50                   	push   %eax
  4d:	6a 00                	push   $0x0
  4f:	ff 77 08             	pushl  0x8(%edi)
  52:	e8 cb 04 00 00       	call   522 <open>
  57:	83 c4 10             	add    $0x10,%esp
  5a:	85 c0                	test   %eax,%eax
  5c:	89 c6                	mov    %eax,%esi
  5e:	0f 88 e4 00 00 00    	js     148 <main+0x148>
	{ // Error handling : cannot read file 2
		printf(1, "failed to read %s\n", argv[2]);
		exit();
	}
	read(file1, buf1, sizeof(buf1));
  64:	51                   	push   %ecx
  65:	68 a0 86 01 00       	push   $0x186a0
  6a:	68 40 0d 00 00       	push   $0xd40
  6f:	53                   	push   %ebx
  70:	e8 85 04 00 00       	call   4fa <read>
	read(file2, buf2, sizeof(buf2));
  75:	83 c4 0c             	add    $0xc,%esp
  78:	68 a0 86 01 00       	push   $0x186a0
  7d:	68 e0 93 01 00       	push   $0x193e0
  82:	56                   	push   %esi
  83:	e8 72 04 00 00       	call   4fa <read>
	int maxLine = 0;
	char *pch = strtok(buf1, " \n");
  88:	5f                   	pop    %edi
  89:	58                   	pop    %eax
  8a:	68 cb 09 00 00       	push   $0x9cb
  8f:	68 40 0d 00 00       	push   $0xd40
  94:	e8 c7 00 00 00       	call   160 <strtok>
	int temp = 0;
	while (pch != NULL)
  99:	83 c4 10             	add    $0x10,%esp
  9c:	85 c0                	test   %eax,%eax
  9e:	74 35                	je     d5 <main+0xd5>
  a0:	8d bd a8 f2 fc ff    	lea    -0x30d58(%ebp),%edi
  a6:	8d 76 00             	lea    0x0(%esi),%esi
  a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	{
		strcpy(datafile1[temp].array,pch);
  b0:	83 ec 08             	sub    $0x8,%esp
  b3:	50                   	push   %eax
  b4:	57                   	push   %edi
  b5:	81 c7 e8 03 00 00    	add    $0x3e8,%edi
  bb:	e8 50 01 00 00       	call   210 <strcpy>
		pch = strtok(NULL," \n");
  c0:	58                   	pop    %eax
  c1:	5a                   	pop    %edx
  c2:	68 cb 09 00 00       	push   $0x9cb
  c7:	6a 00                	push   $0x0
  c9:	e8 92 00 00 00       	call   160 <strtok>
	while (pch != NULL)
  ce:	83 c4 10             	add    $0x10,%esp
  d1:	85 c0                	test   %eax,%eax
  d3:	75 db                	jne    b0 <main+0xb0>
		temp++;
	}
	maxLine = 0;
	temp = 0;
	char *data = strtok(buf2," \n");
  d5:	51                   	push   %ecx
  d6:	51                   	push   %ecx
  d7:	68 cb 09 00 00       	push   $0x9cb
  dc:	68 e0 93 01 00       	push   $0x193e0
  e1:	e8 7a 00 00 00       	call   160 <strtok>
	while (data != NULL)
  e6:	83 c4 10             	add    $0x10,%esp
  e9:	85 c0                	test   %eax,%eax
  eb:	74 30                	je     11d <main+0x11d>
  ed:	8d bd 48 79 fe ff    	lea    -0x186b8(%ebp),%edi
  f3:	90                   	nop
  f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	{
		strcpy(datafile2[temp].array,data);
  f8:	83 ec 08             	sub    $0x8,%esp
  fb:	50                   	push   %eax
  fc:	57                   	push   %edi
  fd:	81 c7 e8 03 00 00    	add    $0x3e8,%edi
 103:	e8 08 01 00 00       	call   210 <strcpy>
		data = strtok(NULL," \n");
 108:	58                   	pop    %eax
 109:	5a                   	pop    %edx
 10a:	68 cb 09 00 00       	push   $0x9cb
 10f:	6a 00                	push   $0x0
 111:	e8 4a 00 00 00       	call   160 <strtok>
	while (data != NULL)
 116:	83 c4 10             	add    $0x10,%esp
 119:	85 c0                	test   %eax,%eax
 11b:	75 db                	jne    f8 <main+0xf8>
	{
		printf(1,"%s %s\n",datafile1[i].array,datafile2[i].array);
		i++;
	}
	
	close(file1);
 11d:	83 ec 0c             	sub    $0xc,%esp
 120:	53                   	push   %ebx
 121:	e8 e4 03 00 00       	call   50a <close>
	close(file2);
 126:	89 34 24             	mov    %esi,(%esp)
 129:	e8 dc 03 00 00       	call   50a <close>
	exit();
 12e:	e8 af 03 00 00       	call   4e2 <exit>
		printf(1, "Failed to read files %s\n", argv[1]);
 133:	50                   	push   %eax
 134:	ff 77 04             	pushl  0x4(%edi)
 137:	68 9f 09 00 00       	push   $0x99f
 13c:	6a 01                	push   $0x1
 13e:	e8 ed 04 00 00       	call   630 <printf>
		exit();
 143:	e8 9a 03 00 00       	call   4e2 <exit>
		printf(1, "failed to read %s\n", argv[2]);
 148:	50                   	push   %eax
 149:	ff 77 08             	pushl  0x8(%edi)
 14c:	68 b8 09 00 00       	push   $0x9b8
 151:	6a 01                	push   $0x1
 153:	e8 d8 04 00 00       	call   630 <printf>
		exit();
 158:	e8 85 03 00 00       	call   4e2 <exit>
 15d:	66 90                	xchg   %ax,%ax
 15f:	90                   	nop

00000160 <strtok>:
{
 160:	55                   	push   %ebp
 161:	89 e5                	mov    %esp,%ebp
 163:	57                   	push   %edi
 164:	56                   	push   %esi
	if (s == NULL && (s = last) == NULL)
 165:	8b 45 08             	mov    0x8(%ebp),%eax
{
 168:	53                   	push   %ebx
	if (s == NULL && (s = last) == NULL)
 169:	85 c0                	test   %eax,%eax
 16b:	74 7b                	je     1e8 <strtok+0x88>
 16d:	8b 5d 08             	mov    0x8(%ebp),%ebx
	c = *s++;
 170:	8d 73 01             	lea    0x1(%ebx),%esi
	for (spanp = (char *)delim; (sc = *spanp++) != 0;)
 173:	8b 45 0c             	mov    0xc(%ebp),%eax
	c = *s++;
 176:	0f be 4e ff          	movsbl -0x1(%esi),%ecx
	for (spanp = (char *)delim; (sc = *spanp++) != 0;)
 17a:	eb 08                	jmp    184 <strtok+0x24>
 17c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		if (c == sc)
 180:	39 d1                	cmp    %edx,%ecx
 182:	74 4c                	je     1d0 <strtok+0x70>
	for (spanp = (char *)delim; (sc = *spanp++) != 0;)
 184:	83 c0 01             	add    $0x1,%eax
 187:	0f be 50 ff          	movsbl -0x1(%eax),%edx
 18b:	85 d2                	test   %edx,%edx
 18d:	75 f1                	jne    180 <strtok+0x20>
	if (c == 0)
 18f:	85 c9                	test   %ecx,%ecx
 191:	89 5d 08             	mov    %ebx,0x8(%ebp)
 194:	74 66                	je     1fc <strtok+0x9c>
		c = *s++;
 196:	8d 7e 01             	lea    0x1(%esi),%edi
		spanp = (char *)delim;
 199:	8b 45 0c             	mov    0xc(%ebp),%eax
		c = *s++;
 19c:	0f b6 5f ff          	movzbl -0x1(%edi),%ebx
 1a0:	eb 0a                	jmp    1ac <strtok+0x4c>
 1a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		} while (sc != 0);
 1a8:	85 c9                	test   %ecx,%ecx
 1aa:	74 2c                	je     1d8 <strtok+0x78>
			if ((sc = *spanp++) == c)
 1ac:	83 c0 01             	add    $0x1,%eax
 1af:	0f be 48 ff          	movsbl -0x1(%eax),%ecx
 1b3:	38 cb                	cmp    %cl,%bl
 1b5:	75 f1                	jne    1a8 <strtok+0x48>
				if (c == 0)
 1b7:	85 c9                	test   %ecx,%ecx
 1b9:	74 25                	je     1e0 <strtok+0x80>
					s[-1] = 0;
 1bb:	c6 06 00             	movb   $0x0,(%esi)
				return (tok);
 1be:	8b 45 08             	mov    0x8(%ebp),%eax
				last = s;
 1c1:	89 3d 20 0d 00 00    	mov    %edi,0xd20
}
 1c7:	5b                   	pop    %ebx
 1c8:	5e                   	pop    %esi
 1c9:	5f                   	pop    %edi
 1ca:	5d                   	pop    %ebp
 1cb:	c3                   	ret    
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
cont:
 1d0:	89 f3                	mov    %esi,%ebx
 1d2:	eb 9c                	jmp    170 <strtok+0x10>
 1d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1d8:	89 fe                	mov    %edi,%esi
 1da:	eb ba                	jmp    196 <strtok+0x36>
 1dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
					s = NULL;
 1e0:	31 ff                	xor    %edi,%edi
 1e2:	eb da                	jmp    1be <strtok+0x5e>
 1e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	if (s == NULL && (s = last) == NULL)
 1e8:	a1 20 0d 00 00       	mov    0xd20,%eax
 1ed:	85 c0                	test   %eax,%eax
 1ef:	89 45 08             	mov    %eax,0x8(%ebp)
 1f2:	0f 85 75 ff ff ff    	jne    16d <strtok+0xd>
		return (NULL);
 1f8:	31 c0                	xor    %eax,%eax
 1fa:	eb cb                	jmp    1c7 <strtok+0x67>
		last = NULL;
 1fc:	c7 05 20 0d 00 00 00 	movl   $0x0,0xd20
 203:	00 00 00 
		return (NULL);
 206:	31 c0                	xor    %eax,%eax
 208:	eb bd                	jmp    1c7 <strtok+0x67>
 20a:	66 90                	xchg   %ax,%ax
 20c:	66 90                	xchg   %ax,%ax
 20e:	66 90                	xchg   %ax,%ax

00000210 <strcpy>:
#include "x86.h"
#include "fcntl.h"

char*
strcpy(char *s, const char *t)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	53                   	push   %ebx
 214:	8b 45 08             	mov    0x8(%ebp),%eax
 217:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 21a:	89 c2                	mov    %eax,%edx
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 220:	83 c1 01             	add    $0x1,%ecx
 223:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 227:	83 c2 01             	add    $0x1,%edx
 22a:	84 db                	test   %bl,%bl
 22c:	88 5a ff             	mov    %bl,-0x1(%edx)
 22f:	75 ef                	jne    220 <strcpy+0x10>
    ;
  return os;
}
 231:	5b                   	pop    %ebx
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 23a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000240 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	53                   	push   %ebx
 244:	8b 55 08             	mov    0x8(%ebp),%edx
 247:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 24a:	0f b6 02             	movzbl (%edx),%eax
 24d:	0f b6 19             	movzbl (%ecx),%ebx
 250:	84 c0                	test   %al,%al
 252:	75 1c                	jne    270 <strcmp+0x30>
 254:	eb 2a                	jmp    280 <strcmp+0x40>
 256:	8d 76 00             	lea    0x0(%esi),%esi
 259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 260:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 263:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 266:	83 c1 01             	add    $0x1,%ecx
 269:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 26c:	84 c0                	test   %al,%al
 26e:	74 10                	je     280 <strcmp+0x40>
 270:	38 d8                	cmp    %bl,%al
 272:	74 ec                	je     260 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 274:	29 d8                	sub    %ebx,%eax
}
 276:	5b                   	pop    %ebx
 277:	5d                   	pop    %ebp
 278:	c3                   	ret    
 279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 280:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 282:	29 d8                	sub    %ebx,%eax
}
 284:	5b                   	pop    %ebx
 285:	5d                   	pop    %ebp
 286:	c3                   	ret    
 287:	89 f6                	mov    %esi,%esi
 289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000290 <strlen>:

uint
strlen(const char *s)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 296:	80 39 00             	cmpb   $0x0,(%ecx)
 299:	74 15                	je     2b0 <strlen+0x20>
 29b:	31 d2                	xor    %edx,%edx
 29d:	8d 76 00             	lea    0x0(%esi),%esi
 2a0:	83 c2 01             	add    $0x1,%edx
 2a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 2a7:	89 d0                	mov    %edx,%eax
 2a9:	75 f5                	jne    2a0 <strlen+0x10>
    ;
  return n;
}
 2ab:	5d                   	pop    %ebp
 2ac:	c3                   	ret    
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 2b0:	31 c0                	xor    %eax,%eax
}
 2b2:	5d                   	pop    %ebp
 2b3:	c3                   	ret    
 2b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	57                   	push   %edi
 2c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 2cd:	89 d7                	mov    %edx,%edi
 2cf:	fc                   	cld    
 2d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2d2:	89 d0                	mov    %edx,%eax
 2d4:	5f                   	pop    %edi
 2d5:	5d                   	pop    %ebp
 2d6:	c3                   	ret    
 2d7:	89 f6                	mov    %esi,%esi
 2d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002e0 <strchr>:

char*
strchr(const char *s, char c)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	53                   	push   %ebx
 2e4:	8b 45 08             	mov    0x8(%ebp),%eax
 2e7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 2ea:	0f b6 10             	movzbl (%eax),%edx
 2ed:	84 d2                	test   %dl,%dl
 2ef:	74 1d                	je     30e <strchr+0x2e>
    if(*s == c)
 2f1:	38 d3                	cmp    %dl,%bl
 2f3:	89 d9                	mov    %ebx,%ecx
 2f5:	75 0d                	jne    304 <strchr+0x24>
 2f7:	eb 17                	jmp    310 <strchr+0x30>
 2f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 300:	38 ca                	cmp    %cl,%dl
 302:	74 0c                	je     310 <strchr+0x30>
  for(; *s; s++)
 304:	83 c0 01             	add    $0x1,%eax
 307:	0f b6 10             	movzbl (%eax),%edx
 30a:	84 d2                	test   %dl,%dl
 30c:	75 f2                	jne    300 <strchr+0x20>
      return (char*)s;
  return 0;
 30e:	31 c0                	xor    %eax,%eax
}
 310:	5b                   	pop    %ebx
 311:	5d                   	pop    %ebp
 312:	c3                   	ret    
 313:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000320 <gets>:

char*
gets(char *buf, int max)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	57                   	push   %edi
 324:	56                   	push   %esi
 325:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 326:	31 f6                	xor    %esi,%esi
 328:	89 f3                	mov    %esi,%ebx
{
 32a:	83 ec 1c             	sub    $0x1c,%esp
 32d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 330:	eb 2f                	jmp    361 <gets+0x41>
 332:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 338:	8d 45 e7             	lea    -0x19(%ebp),%eax
 33b:	83 ec 04             	sub    $0x4,%esp
 33e:	6a 01                	push   $0x1
 340:	50                   	push   %eax
 341:	6a 00                	push   $0x0
 343:	e8 b2 01 00 00       	call   4fa <read>
    if(cc < 1)
 348:	83 c4 10             	add    $0x10,%esp
 34b:	85 c0                	test   %eax,%eax
 34d:	7e 1c                	jle    36b <gets+0x4b>
      break;
    buf[i++] = c;
 34f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 353:	83 c7 01             	add    $0x1,%edi
 356:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 359:	3c 0a                	cmp    $0xa,%al
 35b:	74 23                	je     380 <gets+0x60>
 35d:	3c 0d                	cmp    $0xd,%al
 35f:	74 1f                	je     380 <gets+0x60>
  for(i=0; i+1 < max; ){
 361:	83 c3 01             	add    $0x1,%ebx
 364:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 367:	89 fe                	mov    %edi,%esi
 369:	7c cd                	jl     338 <gets+0x18>
 36b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 36d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 370:	c6 03 00             	movb   $0x0,(%ebx)
}
 373:	8d 65 f4             	lea    -0xc(%ebp),%esp
 376:	5b                   	pop    %ebx
 377:	5e                   	pop    %esi
 378:	5f                   	pop    %edi
 379:	5d                   	pop    %ebp
 37a:	c3                   	ret    
 37b:	90                   	nop
 37c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 380:	8b 75 08             	mov    0x8(%ebp),%esi
 383:	8b 45 08             	mov    0x8(%ebp),%eax
 386:	01 de                	add    %ebx,%esi
 388:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 38a:	c6 03 00             	movb   $0x0,(%ebx)
}
 38d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 390:	5b                   	pop    %ebx
 391:	5e                   	pop    %esi
 392:	5f                   	pop    %edi
 393:	5d                   	pop    %ebp
 394:	c3                   	ret    
 395:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	56                   	push   %esi
 3a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3a5:	83 ec 08             	sub    $0x8,%esp
 3a8:	6a 00                	push   $0x0
 3aa:	ff 75 08             	pushl  0x8(%ebp)
 3ad:	e8 70 01 00 00       	call   522 <open>
  if(fd < 0)
 3b2:	83 c4 10             	add    $0x10,%esp
 3b5:	85 c0                	test   %eax,%eax
 3b7:	78 27                	js     3e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3b9:	83 ec 08             	sub    $0x8,%esp
 3bc:	ff 75 0c             	pushl  0xc(%ebp)
 3bf:	89 c3                	mov    %eax,%ebx
 3c1:	50                   	push   %eax
 3c2:	e8 73 01 00 00       	call   53a <fstat>
  close(fd);
 3c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3ca:	89 c6                	mov    %eax,%esi
  close(fd);
 3cc:	e8 39 01 00 00       	call   50a <close>
  return r;
 3d1:	83 c4 10             	add    $0x10,%esp
}
 3d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3d7:	89 f0                	mov    %esi,%eax
 3d9:	5b                   	pop    %ebx
 3da:	5e                   	pop    %esi
 3db:	5d                   	pop    %ebp
 3dc:	c3                   	ret    
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3e5:	eb ed                	jmp    3d4 <stat+0x34>
 3e7:	89 f6                	mov    %esi,%esi
 3e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003f0 <atoi>:

int
atoi(const char *s)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	53                   	push   %ebx
 3f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3f7:	0f be 11             	movsbl (%ecx),%edx
 3fa:	8d 42 d0             	lea    -0x30(%edx),%eax
 3fd:	3c 09                	cmp    $0x9,%al
  n = 0;
 3ff:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 404:	77 1f                	ja     425 <atoi+0x35>
 406:	8d 76 00             	lea    0x0(%esi),%esi
 409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 410:	8d 04 80             	lea    (%eax,%eax,4),%eax
 413:	83 c1 01             	add    $0x1,%ecx
 416:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 41a:	0f be 11             	movsbl (%ecx),%edx
 41d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 420:	80 fb 09             	cmp    $0x9,%bl
 423:	76 eb                	jbe    410 <atoi+0x20>
  return n;
}
 425:	5b                   	pop    %ebx
 426:	5d                   	pop    %ebp
 427:	c3                   	ret    
 428:	90                   	nop
 429:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000430 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	56                   	push   %esi
 434:	53                   	push   %ebx
 435:	8b 5d 10             	mov    0x10(%ebp),%ebx
 438:	8b 45 08             	mov    0x8(%ebp),%eax
 43b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 43e:	85 db                	test   %ebx,%ebx
 440:	7e 14                	jle    456 <memmove+0x26>
 442:	31 d2                	xor    %edx,%edx
 444:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 448:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 44c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 44f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 452:	39 d3                	cmp    %edx,%ebx
 454:	75 f2                	jne    448 <memmove+0x18>
  return vdst;
}
 456:	5b                   	pop    %ebx
 457:	5e                   	pop    %esi
 458:	5d                   	pop    %ebp
 459:	c3                   	ret    
 45a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000460 <strcat>:

char *
strcat(char *d,const char *s)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	53                   	push   %ebx
 464:	8b 45 08             	mov    0x8(%ebp),%eax
 467:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *temp = d;
  while (*d)
 46a:	80 38 00             	cmpb   $0x0,(%eax)
 46d:	89 c2                	mov    %eax,%edx
 46f:	74 28                	je     499 <strcat+0x39>
 471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ++d;
 478:	83 c2 01             	add    $0x1,%edx
  while (*d)
 47b:	80 3a 00             	cmpb   $0x0,(%edx)
 47e:	75 f8                	jne    478 <strcat+0x18>
  while (*s)
 480:	0f b6 0b             	movzbl (%ebx),%ecx
 483:	84 c9                	test   %cl,%cl
 485:	74 19                	je     4a0 <strcat+0x40>
 487:	89 f6                	mov    %esi,%esi
 489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    *d++ = *s++;
 490:	83 c2 01             	add    $0x1,%edx
 493:	83 c3 01             	add    $0x1,%ebx
 496:	88 4a ff             	mov    %cl,-0x1(%edx)
  while (*s)
 499:	0f b6 0b             	movzbl (%ebx),%ecx
 49c:	84 c9                	test   %cl,%cl
 49e:	75 f0                	jne    490 <strcat+0x30>
  *d = 0;
 4a0:	c6 02 00             	movb   $0x0,(%edx)
  return temp;
}
 4a3:	5b                   	pop    %ebx
 4a4:	5d                   	pop    %ebp
 4a5:	c3                   	ret    
 4a6:	8d 76 00             	lea    0x0(%esi),%esi
 4a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004b0 <strncpy>:
char *strncpy(char *s, const char *t, int n)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	56                   	push   %esi
 4b4:	53                   	push   %ebx
 4b5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4b8:	8b 45 08             	mov    0x8(%ebp),%eax
 4bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  int i;
  char *os;
  os = s;
  for (i = 0; i < n; i++)
 4be:	85 db                	test   %ebx,%ebx
 4c0:	7e 14                	jle    4d6 <strncpy+0x26>
 4c2:	31 d2                	xor    %edx,%edx
 4c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  {
    s[i] = t[i];
 4c8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 4cc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
  for (i = 0; i < n; i++)
 4cf:	83 c2 01             	add    $0x1,%edx
 4d2:	39 d3                	cmp    %edx,%ebx
 4d4:	75 f2                	jne    4c8 <strncpy+0x18>
  }
  return os;
}
 4d6:	5b                   	pop    %ebx
 4d7:	5e                   	pop    %esi
 4d8:	5d                   	pop    %ebp
 4d9:	c3                   	ret    

000004da <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4da:	b8 01 00 00 00       	mov    $0x1,%eax
 4df:	cd 40                	int    $0x40
 4e1:	c3                   	ret    

000004e2 <exit>:
SYSCALL(exit)
 4e2:	b8 02 00 00 00       	mov    $0x2,%eax
 4e7:	cd 40                	int    $0x40
 4e9:	c3                   	ret    

000004ea <wait>:
SYSCALL(wait)
 4ea:	b8 03 00 00 00       	mov    $0x3,%eax
 4ef:	cd 40                	int    $0x40
 4f1:	c3                   	ret    

000004f2 <pipe>:
SYSCALL(pipe)
 4f2:	b8 04 00 00 00       	mov    $0x4,%eax
 4f7:	cd 40                	int    $0x40
 4f9:	c3                   	ret    

000004fa <read>:
SYSCALL(read)
 4fa:	b8 05 00 00 00       	mov    $0x5,%eax
 4ff:	cd 40                	int    $0x40
 501:	c3                   	ret    

00000502 <write>:
SYSCALL(write)
 502:	b8 10 00 00 00       	mov    $0x10,%eax
 507:	cd 40                	int    $0x40
 509:	c3                   	ret    

0000050a <close>:
SYSCALL(close)
 50a:	b8 15 00 00 00       	mov    $0x15,%eax
 50f:	cd 40                	int    $0x40
 511:	c3                   	ret    

00000512 <kill>:
SYSCALL(kill)
 512:	b8 06 00 00 00       	mov    $0x6,%eax
 517:	cd 40                	int    $0x40
 519:	c3                   	ret    

0000051a <exec>:
SYSCALL(exec)
 51a:	b8 07 00 00 00       	mov    $0x7,%eax
 51f:	cd 40                	int    $0x40
 521:	c3                   	ret    

00000522 <open>:
SYSCALL(open)
 522:	b8 0f 00 00 00       	mov    $0xf,%eax
 527:	cd 40                	int    $0x40
 529:	c3                   	ret    

0000052a <mknod>:
SYSCALL(mknod)
 52a:	b8 11 00 00 00       	mov    $0x11,%eax
 52f:	cd 40                	int    $0x40
 531:	c3                   	ret    

00000532 <unlink>:
SYSCALL(unlink)
 532:	b8 12 00 00 00       	mov    $0x12,%eax
 537:	cd 40                	int    $0x40
 539:	c3                   	ret    

0000053a <fstat>:
SYSCALL(fstat)
 53a:	b8 08 00 00 00       	mov    $0x8,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    

00000542 <link>:
SYSCALL(link)
 542:	b8 13 00 00 00       	mov    $0x13,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    

0000054a <mkdir>:
SYSCALL(mkdir)
 54a:	b8 14 00 00 00       	mov    $0x14,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <chdir>:
SYSCALL(chdir)
 552:	b8 09 00 00 00       	mov    $0x9,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <dup>:
SYSCALL(dup)
 55a:	b8 0a 00 00 00       	mov    $0xa,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <getpid>:
SYSCALL(getpid)
 562:	b8 0b 00 00 00       	mov    $0xb,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <sbrk>:
SYSCALL(sbrk)
 56a:	b8 0c 00 00 00       	mov    $0xc,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <sleep>:
SYSCALL(sleep)
 572:	b8 0d 00 00 00       	mov    $0xd,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <uptime>:
SYSCALL(uptime)
 57a:	b8 0e 00 00 00       	mov    $0xe,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    
 582:	66 90                	xchg   %ax,%ax
 584:	66 90                	xchg   %ax,%ax
 586:	66 90                	xchg   %ax,%ax
 588:	66 90                	xchg   %ax,%ax
 58a:	66 90                	xchg   %ax,%ax
 58c:	66 90                	xchg   %ax,%ax
 58e:	66 90                	xchg   %ax,%ax

00000590 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	57                   	push   %edi
 594:	56                   	push   %esi
 595:	53                   	push   %ebx
 596:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 599:	85 d2                	test   %edx,%edx
{
 59b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 59e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 5a0:	79 76                	jns    618 <printint+0x88>
 5a2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5a6:	74 70                	je     618 <printint+0x88>
    x = -xx;
 5a8:	f7 d8                	neg    %eax
    neg = 1;
 5aa:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 5b1:	31 f6                	xor    %esi,%esi
 5b3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 5b6:	eb 0a                	jmp    5c2 <printint+0x32>
 5b8:	90                   	nop
 5b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 5c0:	89 fe                	mov    %edi,%esi
 5c2:	31 d2                	xor    %edx,%edx
 5c4:	8d 7e 01             	lea    0x1(%esi),%edi
 5c7:	f7 f1                	div    %ecx
 5c9:	0f b6 92 d8 09 00 00 	movzbl 0x9d8(%edx),%edx
  }while((x /= base) != 0);
 5d0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 5d2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 5d5:	75 e9                	jne    5c0 <printint+0x30>
  if(neg)
 5d7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 5da:	85 c0                	test   %eax,%eax
 5dc:	74 08                	je     5e6 <printint+0x56>
    buf[i++] = '-';
 5de:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 5e3:	8d 7e 02             	lea    0x2(%esi),%edi
 5e6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 5ea:	8b 7d c0             	mov    -0x40(%ebp),%edi
 5ed:	8d 76 00             	lea    0x0(%esi),%esi
 5f0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 5f3:	83 ec 04             	sub    $0x4,%esp
 5f6:	83 ee 01             	sub    $0x1,%esi
 5f9:	6a 01                	push   $0x1
 5fb:	53                   	push   %ebx
 5fc:	57                   	push   %edi
 5fd:	88 45 d7             	mov    %al,-0x29(%ebp)
 600:	e8 fd fe ff ff       	call   502 <write>

  while(--i >= 0)
 605:	83 c4 10             	add    $0x10,%esp
 608:	39 de                	cmp    %ebx,%esi
 60a:	75 e4                	jne    5f0 <printint+0x60>
    putc(fd, buf[i]);
}
 60c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 60f:	5b                   	pop    %ebx
 610:	5e                   	pop    %esi
 611:	5f                   	pop    %edi
 612:	5d                   	pop    %ebp
 613:	c3                   	ret    
 614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 618:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 61f:	eb 90                	jmp    5b1 <printint+0x21>
 621:	eb 0d                	jmp    630 <printf>
 623:	90                   	nop
 624:	90                   	nop
 625:	90                   	nop
 626:	90                   	nop
 627:	90                   	nop
 628:	90                   	nop
 629:	90                   	nop
 62a:	90                   	nop
 62b:	90                   	nop
 62c:	90                   	nop
 62d:	90                   	nop
 62e:	90                   	nop
 62f:	90                   	nop

00000630 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	57                   	push   %edi
 634:	56                   	push   %esi
 635:	53                   	push   %ebx
 636:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 639:	8b 75 0c             	mov    0xc(%ebp),%esi
 63c:	0f b6 1e             	movzbl (%esi),%ebx
 63f:	84 db                	test   %bl,%bl
 641:	0f 84 b3 00 00 00    	je     6fa <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 647:	8d 45 10             	lea    0x10(%ebp),%eax
 64a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 64d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 64f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 652:	eb 2f                	jmp    683 <printf+0x53>
 654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 658:	83 f8 25             	cmp    $0x25,%eax
 65b:	0f 84 a7 00 00 00    	je     708 <printf+0xd8>
  write(fd, &c, 1);
 661:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 664:	83 ec 04             	sub    $0x4,%esp
 667:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 66a:	6a 01                	push   $0x1
 66c:	50                   	push   %eax
 66d:	ff 75 08             	pushl  0x8(%ebp)
 670:	e8 8d fe ff ff       	call   502 <write>
 675:	83 c4 10             	add    $0x10,%esp
 678:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 67b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 67f:	84 db                	test   %bl,%bl
 681:	74 77                	je     6fa <printf+0xca>
    if(state == 0){
 683:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 685:	0f be cb             	movsbl %bl,%ecx
 688:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 68b:	74 cb                	je     658 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 68d:	83 ff 25             	cmp    $0x25,%edi
 690:	75 e6                	jne    678 <printf+0x48>
      if(c == 'd'){
 692:	83 f8 64             	cmp    $0x64,%eax
 695:	0f 84 05 01 00 00    	je     7a0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 69b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 6a1:	83 f9 70             	cmp    $0x70,%ecx
 6a4:	74 72                	je     718 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 6a6:	83 f8 73             	cmp    $0x73,%eax
 6a9:	0f 84 99 00 00 00    	je     748 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 6af:	83 f8 63             	cmp    $0x63,%eax
 6b2:	0f 84 08 01 00 00    	je     7c0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 6b8:	83 f8 25             	cmp    $0x25,%eax
 6bb:	0f 84 ef 00 00 00    	je     7b0 <printf+0x180>
  write(fd, &c, 1);
 6c1:	8d 45 e7             	lea    -0x19(%ebp),%eax
 6c4:	83 ec 04             	sub    $0x4,%esp
 6c7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6cb:	6a 01                	push   $0x1
 6cd:	50                   	push   %eax
 6ce:	ff 75 08             	pushl  0x8(%ebp)
 6d1:	e8 2c fe ff ff       	call   502 <write>
 6d6:	83 c4 0c             	add    $0xc,%esp
 6d9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 6dc:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 6df:	6a 01                	push   $0x1
 6e1:	50                   	push   %eax
 6e2:	ff 75 08             	pushl  0x8(%ebp)
 6e5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6e8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 6ea:	e8 13 fe ff ff       	call   502 <write>
  for(i = 0; fmt[i]; i++){
 6ef:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 6f3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6f6:	84 db                	test   %bl,%bl
 6f8:	75 89                	jne    683 <printf+0x53>
    }
  }
}
 6fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6fd:	5b                   	pop    %ebx
 6fe:	5e                   	pop    %esi
 6ff:	5f                   	pop    %edi
 700:	5d                   	pop    %ebp
 701:	c3                   	ret    
 702:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 708:	bf 25 00 00 00       	mov    $0x25,%edi
 70d:	e9 66 ff ff ff       	jmp    678 <printf+0x48>
 712:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 718:	83 ec 0c             	sub    $0xc,%esp
 71b:	b9 10 00 00 00       	mov    $0x10,%ecx
 720:	6a 00                	push   $0x0
 722:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 725:	8b 45 08             	mov    0x8(%ebp),%eax
 728:	8b 17                	mov    (%edi),%edx
 72a:	e8 61 fe ff ff       	call   590 <printint>
        ap++;
 72f:	89 f8                	mov    %edi,%eax
 731:	83 c4 10             	add    $0x10,%esp
      state = 0;
 734:	31 ff                	xor    %edi,%edi
        ap++;
 736:	83 c0 04             	add    $0x4,%eax
 739:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 73c:	e9 37 ff ff ff       	jmp    678 <printf+0x48>
 741:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 748:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 74b:	8b 08                	mov    (%eax),%ecx
        ap++;
 74d:	83 c0 04             	add    $0x4,%eax
 750:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 753:	85 c9                	test   %ecx,%ecx
 755:	0f 84 8e 00 00 00    	je     7e9 <printf+0x1b9>
        while(*s != 0){
 75b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 75e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 760:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 762:	84 c0                	test   %al,%al
 764:	0f 84 0e ff ff ff    	je     678 <printf+0x48>
 76a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 76d:	89 de                	mov    %ebx,%esi
 76f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 772:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 775:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 778:	83 ec 04             	sub    $0x4,%esp
          s++;
 77b:	83 c6 01             	add    $0x1,%esi
 77e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 781:	6a 01                	push   $0x1
 783:	57                   	push   %edi
 784:	53                   	push   %ebx
 785:	e8 78 fd ff ff       	call   502 <write>
        while(*s != 0){
 78a:	0f b6 06             	movzbl (%esi),%eax
 78d:	83 c4 10             	add    $0x10,%esp
 790:	84 c0                	test   %al,%al
 792:	75 e4                	jne    778 <printf+0x148>
 794:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 797:	31 ff                	xor    %edi,%edi
 799:	e9 da fe ff ff       	jmp    678 <printf+0x48>
 79e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 7a0:	83 ec 0c             	sub    $0xc,%esp
 7a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7a8:	6a 01                	push   $0x1
 7aa:	e9 73 ff ff ff       	jmp    722 <printf+0xf2>
 7af:	90                   	nop
  write(fd, &c, 1);
 7b0:	83 ec 04             	sub    $0x4,%esp
 7b3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 7b6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 7b9:	6a 01                	push   $0x1
 7bb:	e9 21 ff ff ff       	jmp    6e1 <printf+0xb1>
        putc(fd, *ap);
 7c0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 7c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7c6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 7c8:	6a 01                	push   $0x1
        ap++;
 7ca:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 7cd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 7d0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 7d3:	50                   	push   %eax
 7d4:	ff 75 08             	pushl  0x8(%ebp)
 7d7:	e8 26 fd ff ff       	call   502 <write>
        ap++;
 7dc:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 7df:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7e2:	31 ff                	xor    %edi,%edi
 7e4:	e9 8f fe ff ff       	jmp    678 <printf+0x48>
          s = "(null)";
 7e9:	bb ce 09 00 00       	mov    $0x9ce,%ebx
        while(*s != 0){
 7ee:	b8 28 00 00 00       	mov    $0x28,%eax
 7f3:	e9 72 ff ff ff       	jmp    76a <printf+0x13a>
 7f8:	66 90                	xchg   %ax,%ax
 7fa:	66 90                	xchg   %ax,%ax
 7fc:	66 90                	xchg   %ax,%ax
 7fe:	66 90                	xchg   %ax,%ax

00000800 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 800:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 801:	a1 24 0d 00 00       	mov    0xd24,%eax
{
 806:	89 e5                	mov    %esp,%ebp
 808:	57                   	push   %edi
 809:	56                   	push   %esi
 80a:	53                   	push   %ebx
 80b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 80e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 818:	39 c8                	cmp    %ecx,%eax
 81a:	8b 10                	mov    (%eax),%edx
 81c:	73 32                	jae    850 <free+0x50>
 81e:	39 d1                	cmp    %edx,%ecx
 820:	72 04                	jb     826 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 822:	39 d0                	cmp    %edx,%eax
 824:	72 32                	jb     858 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 826:	8b 73 fc             	mov    -0x4(%ebx),%esi
 829:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 82c:	39 fa                	cmp    %edi,%edx
 82e:	74 30                	je     860 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 830:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 833:	8b 50 04             	mov    0x4(%eax),%edx
 836:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 839:	39 f1                	cmp    %esi,%ecx
 83b:	74 3a                	je     877 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 83d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 83f:	a3 24 0d 00 00       	mov    %eax,0xd24
}
 844:	5b                   	pop    %ebx
 845:	5e                   	pop    %esi
 846:	5f                   	pop    %edi
 847:	5d                   	pop    %ebp
 848:	c3                   	ret    
 849:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 850:	39 d0                	cmp    %edx,%eax
 852:	72 04                	jb     858 <free+0x58>
 854:	39 d1                	cmp    %edx,%ecx
 856:	72 ce                	jb     826 <free+0x26>
{
 858:	89 d0                	mov    %edx,%eax
 85a:	eb bc                	jmp    818 <free+0x18>
 85c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 860:	03 72 04             	add    0x4(%edx),%esi
 863:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 866:	8b 10                	mov    (%eax),%edx
 868:	8b 12                	mov    (%edx),%edx
 86a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 86d:	8b 50 04             	mov    0x4(%eax),%edx
 870:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 873:	39 f1                	cmp    %esi,%ecx
 875:	75 c6                	jne    83d <free+0x3d>
    p->s.size += bp->s.size;
 877:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 87a:	a3 24 0d 00 00       	mov    %eax,0xd24
    p->s.size += bp->s.size;
 87f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 882:	8b 53 f8             	mov    -0x8(%ebx),%edx
 885:	89 10                	mov    %edx,(%eax)
}
 887:	5b                   	pop    %ebx
 888:	5e                   	pop    %esi
 889:	5f                   	pop    %edi
 88a:	5d                   	pop    %ebp
 88b:	c3                   	ret    
 88c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000890 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 890:	55                   	push   %ebp
 891:	89 e5                	mov    %esp,%ebp
 893:	57                   	push   %edi
 894:	56                   	push   %esi
 895:	53                   	push   %ebx
 896:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 899:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 89c:	8b 15 24 0d 00 00    	mov    0xd24,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8a2:	8d 78 07             	lea    0x7(%eax),%edi
 8a5:	c1 ef 03             	shr    $0x3,%edi
 8a8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 8ab:	85 d2                	test   %edx,%edx
 8ad:	0f 84 9d 00 00 00    	je     950 <malloc+0xc0>
 8b3:	8b 02                	mov    (%edx),%eax
 8b5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 8b8:	39 cf                	cmp    %ecx,%edi
 8ba:	76 6c                	jbe    928 <malloc+0x98>
 8bc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 8c2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8c7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 8ca:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 8d1:	eb 0e                	jmp    8e1 <malloc+0x51>
 8d3:	90                   	nop
 8d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8da:	8b 48 04             	mov    0x4(%eax),%ecx
 8dd:	39 f9                	cmp    %edi,%ecx
 8df:	73 47                	jae    928 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8e1:	39 05 24 0d 00 00    	cmp    %eax,0xd24
 8e7:	89 c2                	mov    %eax,%edx
 8e9:	75 ed                	jne    8d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8eb:	83 ec 0c             	sub    $0xc,%esp
 8ee:	56                   	push   %esi
 8ef:	e8 76 fc ff ff       	call   56a <sbrk>
  if(p == (char*)-1)
 8f4:	83 c4 10             	add    $0x10,%esp
 8f7:	83 f8 ff             	cmp    $0xffffffff,%eax
 8fa:	74 1c                	je     918 <malloc+0x88>
  hp->s.size = nu;
 8fc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 8ff:	83 ec 0c             	sub    $0xc,%esp
 902:	83 c0 08             	add    $0x8,%eax
 905:	50                   	push   %eax
 906:	e8 f5 fe ff ff       	call   800 <free>
  return freep;
 90b:	8b 15 24 0d 00 00    	mov    0xd24,%edx
      if((p = morecore(nunits)) == 0)
 911:	83 c4 10             	add    $0x10,%esp
 914:	85 d2                	test   %edx,%edx
 916:	75 c0                	jne    8d8 <malloc+0x48>
        return 0;
  }
}
 918:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 91b:	31 c0                	xor    %eax,%eax
}
 91d:	5b                   	pop    %ebx
 91e:	5e                   	pop    %esi
 91f:	5f                   	pop    %edi
 920:	5d                   	pop    %ebp
 921:	c3                   	ret    
 922:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 928:	39 cf                	cmp    %ecx,%edi
 92a:	74 54                	je     980 <malloc+0xf0>
        p->s.size -= nunits;
 92c:	29 f9                	sub    %edi,%ecx
 92e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 931:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 934:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 937:	89 15 24 0d 00 00    	mov    %edx,0xd24
}
 93d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 940:	83 c0 08             	add    $0x8,%eax
}
 943:	5b                   	pop    %ebx
 944:	5e                   	pop    %esi
 945:	5f                   	pop    %edi
 946:	5d                   	pop    %ebp
 947:	c3                   	ret    
 948:	90                   	nop
 949:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 950:	c7 05 24 0d 00 00 28 	movl   $0xd28,0xd24
 957:	0d 00 00 
 95a:	c7 05 28 0d 00 00 28 	movl   $0xd28,0xd28
 961:	0d 00 00 
    base.s.size = 0;
 964:	b8 28 0d 00 00       	mov    $0xd28,%eax
 969:	c7 05 2c 0d 00 00 00 	movl   $0x0,0xd2c
 970:	00 00 00 
 973:	e9 44 ff ff ff       	jmp    8bc <malloc+0x2c>
 978:	90                   	nop
 979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 980:	8b 08                	mov    (%eax),%ecx
 982:	89 0a                	mov    %ecx,(%edx)
 984:	eb b1                	jmp    937 <malloc+0xa7>
