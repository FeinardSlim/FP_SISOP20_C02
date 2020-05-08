
_tree:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    }
    close(fd);
}

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 0c             	sub    $0xc,%esp
  13:	8b 19                	mov    (%ecx),%ebx
  15:	8b 71 04             	mov    0x4(%ecx),%esi

    if (argc < 2)
  18:	83 fb 01             	cmp    $0x1,%ebx
  1b:	0f 8e 83 00 00 00    	jle    a4 <main+0xa4>
        depth = 10000;
        ls(".",0);
        exit();
    }
    else{
        if(strcmp(argv[1],"-d") == 0){
  21:	50                   	push   %eax
  22:	50                   	push   %eax
  23:	68 ad 0c 00 00       	push   $0xcad
  28:	ff 76 04             	pushl  0x4(%esi)
  2b:	e8 e0 04 00 00       	call   510 <strcmp>
  30:	83 c4 10             	add    $0x10,%esp
  33:	85 c0                	test   %eax,%eax
  35:	75 31                	jne    68 <main+0x68>
            if(argc == 2)
  37:	83 fb 02             	cmp    $0x2,%ebx
            {
                flag = 1;
  3a:	c7 05 2c 10 00 00 01 	movl   $0x1,0x102c
  41:	00 00 00 
                depth = 10000;
  44:	c7 05 30 10 00 00 10 	movl   $0x2710,0x1030
  4b:	27 00 00 
            if(argc == 2)
  4e:	0f 84 88 00 00 00    	je     dc <main+0xdc>
                ls(".",0);
            }
            else{
                flag = 1;
                depth = 10000;
                ls(argv[2], 0);
  54:	50                   	push   %eax
  55:	50                   	push   %eax
  56:	6a 00                	push   $0x0
  58:	ff 76 08             	pushl  0x8(%esi)
  5b:	e8 60 01 00 00       	call   1c0 <ls>
  60:	83 c4 10             	add    $0x10,%esp
        {
            depth = 10000;
            ls(argv[1],0);
        }
    }
    exit();
  63:	e8 4a 07 00 00       	call   7b2 <exit>
        else if (strcmp(argv[1],"-L") == 0)
  68:	50                   	push   %eax
  69:	50                   	push   %eax
  6a:	68 b0 0c 00 00       	push   $0xcb0
  6f:	ff 76 04             	pushl  0x4(%esi)
  72:	e8 99 04 00 00       	call   510 <strcmp>
  77:	83 c4 10             	add    $0x10,%esp
  7a:	85 c0                	test   %eax,%eax
  7c:	75 43                	jne    c1 <main+0xc1>
            if (argc == 3)
  7e:	83 fb 03             	cmp    $0x3,%ebx
  81:	74 6f                	je     f2 <main+0xf2>
                int temp = atoi(argv[3]);
  83:	83 ec 0c             	sub    $0xc,%esp
  86:	ff 76 0c             	pushl  0xc(%esi)
  89:	e8 32 06 00 00       	call   6c0 <atoi>
                ls(argv[2], 0);
  8e:	5a                   	pop    %edx
  8f:	59                   	pop    %ecx
  90:	6a 00                	push   $0x0
  92:	ff 76 08             	pushl  0x8(%esi)
                depth = temp;
  95:	a3 30 10 00 00       	mov    %eax,0x1030
                ls(argv[2], 0);
  9a:	e8 21 01 00 00       	call   1c0 <ls>
  9f:	83 c4 10             	add    $0x10,%esp
  a2:	eb bf                	jmp    63 <main+0x63>
        ls(".",0);
  a4:	50                   	push   %eax
  a5:	50                   	push   %eax
  a6:	6a 00                	push   $0x0
  a8:	68 ab 0c 00 00       	push   $0xcab
        depth = 10000;
  ad:	c7 05 30 10 00 00 10 	movl   $0x2710,0x1030
  b4:	27 00 00 
        ls(".",0);
  b7:	e8 04 01 00 00       	call   1c0 <ls>
        exit();
  bc:	e8 f1 06 00 00       	call   7b2 <exit>
            ls(argv[1],0);
  c1:	50                   	push   %eax
  c2:	50                   	push   %eax
  c3:	6a 00                	push   $0x0
  c5:	ff 76 04             	pushl  0x4(%esi)
            depth = 10000;
  c8:	c7 05 30 10 00 00 10 	movl   $0x2710,0x1030
  cf:	27 00 00 
            ls(argv[1],0);
  d2:	e8 e9 00 00 00       	call   1c0 <ls>
  d7:	83 c4 10             	add    $0x10,%esp
  da:	eb 87                	jmp    63 <main+0x63>
                ls(".",0);
  dc:	50                   	push   %eax
  dd:	50                   	push   %eax
  de:	6a 00                	push   $0x0
  e0:	68 ab 0c 00 00       	push   $0xcab
  e5:	e8 d6 00 00 00       	call   1c0 <ls>
  ea:	83 c4 10             	add    $0x10,%esp
  ed:	e9 71 ff ff ff       	jmp    63 <main+0x63>
                int temp = atoi(argv[2]);
  f2:	83 ec 0c             	sub    $0xc,%esp
  f5:	ff 76 08             	pushl  0x8(%esi)
  f8:	e8 c3 05 00 00       	call   6c0 <atoi>
                ls(".", 0);
  fd:	5b                   	pop    %ebx
  fe:	5e                   	pop    %esi
  ff:	6a 00                	push   $0x0
 101:	68 ab 0c 00 00       	push   $0xcab
                depth = temp;
 106:	a3 30 10 00 00       	mov    %eax,0x1030
                ls(".", 0);
 10b:	e8 b0 00 00 00       	call   1c0 <ls>
 110:	83 c4 10             	add    $0x10,%esp
 113:	e9 4b ff ff ff       	jmp    63 <main+0x63>
 118:	66 90                	xchg   %ax,%ax
 11a:	66 90                	xchg   %ax,%ax
 11c:	66 90                	xchg   %ax,%ax
 11e:	66 90                	xchg   %ax,%ax

00000120 <fmtname>:
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	56                   	push   %esi
 124:	53                   	push   %ebx
 125:	8b 5d 08             	mov    0x8(%ebp),%ebx
    for (p = path + strlen(path); p >= path && *p != '/'; p--)
 128:	83 ec 0c             	sub    $0xc,%esp
 12b:	53                   	push   %ebx
 12c:	e8 2f 04 00 00       	call   560 <strlen>
 131:	83 c4 10             	add    $0x10,%esp
 134:	01 d8                	add    %ebx,%eax
 136:	73 0f                	jae    147 <fmtname+0x27>
 138:	eb 12                	jmp    14c <fmtname+0x2c>
 13a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 140:	83 e8 01             	sub    $0x1,%eax
 143:	39 c3                	cmp    %eax,%ebx
 145:	77 05                	ja     14c <fmtname+0x2c>
 147:	80 38 2f             	cmpb   $0x2f,(%eax)
 14a:	75 f4                	jne    140 <fmtname+0x20>
    p++;
 14c:	8d 58 01             	lea    0x1(%eax),%ebx
    if (strlen(p) >= DIRSIZ)
 14f:	83 ec 0c             	sub    $0xc,%esp
 152:	53                   	push   %ebx
 153:	e8 08 04 00 00       	call   560 <strlen>
 158:	83 c4 10             	add    $0x10,%esp
 15b:	83 f8 0d             	cmp    $0xd,%eax
 15e:	77 4a                	ja     1aa <fmtname+0x8a>
    memmove(buf, p, strlen(p));
 160:	83 ec 0c             	sub    $0xc,%esp
 163:	53                   	push   %ebx
 164:	e8 f7 03 00 00       	call   560 <strlen>
 169:	83 c4 0c             	add    $0xc,%esp
 16c:	50                   	push   %eax
 16d:	53                   	push   %ebx
 16e:	68 34 10 00 00       	push   $0x1034
 173:	e8 88 05 00 00       	call   700 <memmove>
    memset(buf + strlen(p), ' ', DIRSIZ - strlen(p));
 178:	89 1c 24             	mov    %ebx,(%esp)
 17b:	e8 e0 03 00 00       	call   560 <strlen>
 180:	89 1c 24             	mov    %ebx,(%esp)
 183:	89 c6                	mov    %eax,%esi
    return buf;
 185:	bb 34 10 00 00       	mov    $0x1034,%ebx
    memset(buf + strlen(p), ' ', DIRSIZ - strlen(p));
 18a:	e8 d1 03 00 00       	call   560 <strlen>
 18f:	ba 0e 00 00 00       	mov    $0xe,%edx
 194:	83 c4 0c             	add    $0xc,%esp
 197:	05 34 10 00 00       	add    $0x1034,%eax
 19c:	29 f2                	sub    %esi,%edx
 19e:	52                   	push   %edx
 19f:	6a 20                	push   $0x20
 1a1:	50                   	push   %eax
 1a2:	e8 e9 03 00 00       	call   590 <memset>
    return buf;
 1a7:	83 c4 10             	add    $0x10,%esp
}
 1aa:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1ad:	89 d8                	mov    %ebx,%eax
 1af:	5b                   	pop    %ebx
 1b0:	5e                   	pop    %esi
 1b1:	5d                   	pop    %ebp
 1b2:	c3                   	ret    
 1b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001c0 <ls>:
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	57                   	push   %edi
 1c4:	56                   	push   %esi
 1c5:	53                   	push   %ebx
 1c6:	81 ec 5c 02 00 00    	sub    $0x25c,%esp
    if(level == depth){
 1cc:	8b 45 0c             	mov    0xc(%ebp),%eax
 1cf:	39 05 30 10 00 00    	cmp    %eax,0x1030
 1d5:	75 09                	jne    1e0 <ls+0x20>
}
 1d7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1da:	5b                   	pop    %ebx
 1db:	5e                   	pop    %esi
 1dc:	5f                   	pop    %edi
 1dd:	5d                   	pop    %ebp
 1de:	c3                   	ret    
 1df:	90                   	nop
    if ((fd = open(path, 0)) < 0)
 1e0:	83 ec 08             	sub    $0x8,%esp
 1e3:	6a 00                	push   $0x0
 1e5:	ff 75 08             	pushl  0x8(%ebp)
 1e8:	e8 05 06 00 00       	call   7f2 <open>
 1ed:	83 c4 10             	add    $0x10,%esp
 1f0:	85 c0                	test   %eax,%eax
 1f2:	89 c3                	mov    %eax,%ebx
 1f4:	0f 88 16 02 00 00    	js     410 <ls+0x250>
    if (fstat(fd, &st) < 0)
 1fa:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 200:	83 ec 08             	sub    $0x8,%esp
 203:	56                   	push   %esi
 204:	50                   	push   %eax
 205:	e8 00 06 00 00       	call   80a <fstat>
 20a:	83 c4 10             	add    $0x10,%esp
 20d:	85 c0                	test   %eax,%eax
 20f:	0f 88 1b 02 00 00    	js     430 <ls+0x270>
    switch (st.type)
 215:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 21c:	66 83 f8 01          	cmp    $0x1,%ax
 220:	74 4e                	je     270 <ls+0xb0>
 222:	66 83 f8 02          	cmp    $0x2,%ax
 226:	75 31                	jne    259 <ls+0x99>
        printf(1, "FILE = %d %s %d %d %d\n", level, fmtname(path), st.type, st.ino, st.size);
 228:	83 ec 0c             	sub    $0xc,%esp
 22b:	8b bd e4 fd ff ff    	mov    -0x21c(%ebp),%edi
 231:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 237:	ff 75 08             	pushl  0x8(%ebp)
 23a:	e8 e1 fe ff ff       	call   120 <fmtname>
 23f:	83 c4 0c             	add    $0xc,%esp
 242:	57                   	push   %edi
 243:	56                   	push   %esi
 244:	6a 02                	push   $0x2
 246:	50                   	push   %eax
 247:	ff 75 0c             	pushl  0xc(%ebp)
 24a:	68 80 0c 00 00       	push   $0xc80
 24f:	6a 01                	push   $0x1
 251:	e8 aa 06 00 00       	call   900 <printf>
        break;
 256:	83 c4 20             	add    $0x20,%esp
    close(fd);
 259:	83 ec 0c             	sub    $0xc,%esp
 25c:	53                   	push   %ebx
 25d:	e8 78 05 00 00       	call   7da <close>
 262:	83 c4 10             	add    $0x10,%esp
}
 265:	8d 65 f4             	lea    -0xc(%ebp),%esp
 268:	5b                   	pop    %ebx
 269:	5e                   	pop    %esi
 26a:	5f                   	pop    %edi
 26b:	5d                   	pop    %ebp
 26c:	c3                   	ret    
 26d:	8d 76 00             	lea    0x0(%esi),%esi
        if (strlen(path) + 1 + DIRSIZ + 1 > sizeof buf)
 270:	83 ec 0c             	sub    $0xc,%esp
 273:	ff 75 08             	pushl  0x8(%ebp)
 276:	e8 e5 02 00 00       	call   560 <strlen>
 27b:	83 c0 10             	add    $0x10,%eax
 27e:	83 c4 10             	add    $0x10,%esp
 281:	3d 00 02 00 00       	cmp    $0x200,%eax
 286:	0f 87 cc 01 00 00    	ja     458 <ls+0x298>
        strcpy(buf, path);
 28c:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 292:	83 ec 08             	sub    $0x8,%esp
 295:	ff 75 08             	pushl  0x8(%ebp)
 298:	8d bd c4 fd ff ff    	lea    -0x23c(%ebp),%edi
 29e:	50                   	push   %eax
 29f:	e8 3c 02 00 00       	call   4e0 <strcpy>
        p = buf + strlen(buf);
 2a4:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 2aa:	89 04 24             	mov    %eax,(%esp)
 2ad:	e8 ae 02 00 00       	call   560 <strlen>
 2b2:	8d 8d e8 fd ff ff    	lea    -0x218(%ebp),%ecx
        while (read(fd, &de, sizeof(de)) == sizeof(de))
 2b8:	83 c4 10             	add    $0x10,%esp
        p = buf + strlen(buf);
 2bb:	01 c8                	add    %ecx,%eax
        *p++ = '/';
 2bd:	8d 50 01             	lea    0x1(%eax),%edx
        p = buf + strlen(buf);
 2c0:	89 85 b0 fd ff ff    	mov    %eax,-0x250(%ebp)
        *p++ = '/';
 2c6:	c6 00 2f             	movb   $0x2f,(%eax)
 2c9:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
        while (read(fd, &de, sizeof(de)) == sizeof(de))
 2cf:	83 ec 04             	sub    $0x4,%esp
 2d2:	6a 10                	push   $0x10
 2d4:	57                   	push   %edi
 2d5:	53                   	push   %ebx
 2d6:	e8 ef 04 00 00       	call   7ca <read>
 2db:	83 c4 10             	add    $0x10,%esp
 2de:	83 f8 10             	cmp    $0x10,%eax
 2e1:	0f 85 72 ff ff ff    	jne    259 <ls+0x99>
            if (de.inum == 0)
 2e7:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 2ee:	00 
 2ef:	74 de                	je     2cf <ls+0x10f>
            memmove(p, de.name, DIRSIZ);
 2f1:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 2f7:	83 ec 04             	sub    $0x4,%esp
 2fa:	6a 0e                	push   $0xe
 2fc:	50                   	push   %eax
 2fd:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 303:	e8 f8 03 00 00       	call   700 <memmove>
            if (strcmp(de.name, ".") == 0 || strcmp(de.name, "..") == 0) continue;
 308:	59                   	pop    %ecx
 309:	58                   	pop    %eax
 30a:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 310:	68 ab 0c 00 00       	push   $0xcab
 315:	50                   	push   %eax
 316:	e8 f5 01 00 00       	call   510 <strcmp>
 31b:	83 c4 10             	add    $0x10,%esp
 31e:	85 c0                	test   %eax,%eax
 320:	74 ad                	je     2cf <ls+0x10f>
 322:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 328:	83 ec 08             	sub    $0x8,%esp
 32b:	68 aa 0c 00 00       	push   $0xcaa
 330:	50                   	push   %eax
 331:	e8 da 01 00 00       	call   510 <strcmp>
 336:	83 c4 10             	add    $0x10,%esp
 339:	85 c0                	test   %eax,%eax
 33b:	74 92                	je     2cf <ls+0x10f>
            p[DIRSIZ] = 0;
 33d:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
            if (stat(buf, &st) < 0)
 343:	83 ec 08             	sub    $0x8,%esp
            p[DIRSIZ] = 0;
 346:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
            if (stat(buf, &st) < 0)
 34a:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 350:	56                   	push   %esi
 351:	50                   	push   %eax
 352:	e8 19 03 00 00       	call   670 <stat>
 357:	83 c4 10             	add    $0x10,%esp
 35a:	85 c0                	test   %eax,%eax
 35c:	0f 88 59 01 00 00    	js     4bb <ls+0x2fb>
            if(flag == 1){
 362:	83 3d 2c 10 00 00 01 	cmpl   $0x1,0x102c
 369:	0f b7 95 d4 fd ff ff 	movzwl -0x22c(%ebp),%edx
 370:	0f 85 f9 00 00 00    	jne    46f <ls+0x2af>
                if (st.type == 1)
 376:	66 83 fa 01          	cmp    $0x1,%dx
 37a:	0f 85 4f ff ff ff    	jne    2cf <ls+0x10f>
                    printf(1, "%d %s %d %d %d\n",level, fmtname(buf), st.type, st.ino, st.size);
 380:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 386:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 38c:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
 392:	83 ec 0c             	sub    $0xc,%esp
 395:	50                   	push   %eax
 396:	89 8d a8 fd ff ff    	mov    %ecx,-0x258(%ebp)
 39c:	89 95 ac fd ff ff    	mov    %edx,-0x254(%ebp)
 3a2:	e8 79 fd ff ff       	call   120 <fmtname>
 3a7:	8b 8d a8 fd ff ff    	mov    -0x258(%ebp),%ecx
 3ad:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
 3b3:	83 c4 0c             	add    $0xc,%esp
 3b6:	51                   	push   %ecx
 3b7:	52                   	push   %edx
 3b8:	6a 01                	push   $0x1
                printf(1, "%d %s %d %d %d\n",level, fmtname(buf), st.type, st.ino, st.size);
 3ba:	50                   	push   %eax
 3bb:	ff 75 0c             	pushl  0xc(%ebp)
 3be:	68 87 0c 00 00       	push   $0xc87
 3c3:	6a 01                	push   $0x1
 3c5:	e8 36 05 00 00       	call   900 <printf>
 3ca:	83 c4 20             	add    $0x20,%esp
            if(st.type == 1 && level < depth){
 3cd:	66 83 bd d4 fd ff ff 	cmpw   $0x1,-0x22c(%ebp)
 3d4:	01 
 3d5:	0f 85 f4 fe ff ff    	jne    2cf <ls+0x10f>
 3db:	8b 45 0c             	mov    0xc(%ebp),%eax
 3de:	39 05 30 10 00 00    	cmp    %eax,0x1030
 3e4:	0f 8e e5 fe ff ff    	jle    2cf <ls+0x10f>
                int temp = level+1;
 3ea:	83 c0 01             	add    $0x1,%eax
                ls(buf,temp);
 3ed:	52                   	push   %edx
 3ee:	52                   	push   %edx
 3ef:	50                   	push   %eax
 3f0:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 3f6:	50                   	push   %eax
 3f7:	e8 c4 fd ff ff       	call   1c0 <ls>
                sleep(1);
 3fc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 403:	e8 3a 04 00 00       	call   842 <sleep>
 408:	83 c4 10             	add    $0x10,%esp
 40b:	e9 bf fe ff ff       	jmp    2cf <ls+0x10f>
        printf(2, "ls: cannot open %s\n", path);
 410:	83 ec 04             	sub    $0x4,%esp
 413:	ff 75 08             	pushl  0x8(%ebp)
 416:	68 58 0c 00 00       	push   $0xc58
 41b:	6a 02                	push   $0x2
 41d:	e8 de 04 00 00       	call   900 <printf>
        return;
 422:	83 c4 10             	add    $0x10,%esp
}
 425:	8d 65 f4             	lea    -0xc(%ebp),%esp
 428:	5b                   	pop    %ebx
 429:	5e                   	pop    %esi
 42a:	5f                   	pop    %edi
 42b:	5d                   	pop    %ebp
 42c:	c3                   	ret    
 42d:	8d 76 00             	lea    0x0(%esi),%esi
        printf(2, "ls: cannot stat %s\n", path);
 430:	83 ec 04             	sub    $0x4,%esp
 433:	ff 75 08             	pushl  0x8(%ebp)
 436:	68 6c 0c 00 00       	push   $0xc6c
 43b:	6a 02                	push   $0x2
 43d:	e8 be 04 00 00       	call   900 <printf>
        close(fd);
 442:	89 1c 24             	mov    %ebx,(%esp)
 445:	e8 90 03 00 00       	call   7da <close>
        return;
 44a:	83 c4 10             	add    $0x10,%esp
 44d:	e9 85 fd ff ff       	jmp    1d7 <ls+0x17>
 452:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            printf(1, "ls: path too long\n");
 458:	83 ec 08             	sub    $0x8,%esp
 45b:	68 97 0c 00 00       	push   $0xc97
 460:	6a 01                	push   $0x1
 462:	e8 99 04 00 00       	call   900 <printf>
            break;
 467:	83 c4 10             	add    $0x10,%esp
 46a:	e9 ea fd ff ff       	jmp    259 <ls+0x99>
                printf(1, "%d %s %d %d %d\n",level, fmtname(buf), st.type, st.ino, st.size);
 46f:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 475:	83 ec 0c             	sub    $0xc,%esp
 478:	8b 85 dc fd ff ff    	mov    -0x224(%ebp),%eax
 47e:	89 95 a4 fd ff ff    	mov    %edx,-0x25c(%ebp)
 484:	89 8d a8 fd ff ff    	mov    %ecx,-0x258(%ebp)
 48a:	8d 8d e8 fd ff ff    	lea    -0x218(%ebp),%ecx
 490:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
 496:	51                   	push   %ecx
 497:	e8 84 fc ff ff       	call   120 <fmtname>
 49c:	8b 95 a4 fd ff ff    	mov    -0x25c(%ebp),%edx
 4a2:	8b 8d a8 fd ff ff    	mov    -0x258(%ebp),%ecx
 4a8:	83 c4 0c             	add    $0xc,%esp
 4ab:	0f bf d2             	movswl %dx,%edx
 4ae:	51                   	push   %ecx
 4af:	ff b5 ac fd ff ff    	pushl  -0x254(%ebp)
 4b5:	52                   	push   %edx
 4b6:	e9 ff fe ff ff       	jmp    3ba <ls+0x1fa>
                printf(1, "ls: cannot stat %s\n", buf);
 4bb:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 4c1:	83 ec 04             	sub    $0x4,%esp
 4c4:	50                   	push   %eax
 4c5:	68 6c 0c 00 00       	push   $0xc6c
 4ca:	6a 01                	push   $0x1
 4cc:	e8 2f 04 00 00       	call   900 <printf>
                continue;
 4d1:	83 c4 10             	add    $0x10,%esp
 4d4:	e9 f6 fd ff ff       	jmp    2cf <ls+0x10f>
 4d9:	66 90                	xchg   %ax,%ax
 4db:	66 90                	xchg   %ax,%ax
 4dd:	66 90                	xchg   %ax,%ax
 4df:	90                   	nop

000004e0 <strcpy>:
#include "x86.h"
#include "fcntl.h"

char*
strcpy(char *s, const char *t)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	53                   	push   %ebx
 4e4:	8b 45 08             	mov    0x8(%ebp),%eax
 4e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 4ea:	89 c2                	mov    %eax,%edx
 4ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4f0:	83 c1 01             	add    $0x1,%ecx
 4f3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 4f7:	83 c2 01             	add    $0x1,%edx
 4fa:	84 db                	test   %bl,%bl
 4fc:	88 5a ff             	mov    %bl,-0x1(%edx)
 4ff:	75 ef                	jne    4f0 <strcpy+0x10>
    ;
  return os;
}
 501:	5b                   	pop    %ebx
 502:	5d                   	pop    %ebp
 503:	c3                   	ret    
 504:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 50a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000510 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	53                   	push   %ebx
 514:	8b 55 08             	mov    0x8(%ebp),%edx
 517:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 51a:	0f b6 02             	movzbl (%edx),%eax
 51d:	0f b6 19             	movzbl (%ecx),%ebx
 520:	84 c0                	test   %al,%al
 522:	75 1c                	jne    540 <strcmp+0x30>
 524:	eb 2a                	jmp    550 <strcmp+0x40>
 526:	8d 76 00             	lea    0x0(%esi),%esi
 529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 530:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 533:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 536:	83 c1 01             	add    $0x1,%ecx
 539:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 53c:	84 c0                	test   %al,%al
 53e:	74 10                	je     550 <strcmp+0x40>
 540:	38 d8                	cmp    %bl,%al
 542:	74 ec                	je     530 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 544:	29 d8                	sub    %ebx,%eax
}
 546:	5b                   	pop    %ebx
 547:	5d                   	pop    %ebp
 548:	c3                   	ret    
 549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 550:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 552:	29 d8                	sub    %ebx,%eax
}
 554:	5b                   	pop    %ebx
 555:	5d                   	pop    %ebp
 556:	c3                   	ret    
 557:	89 f6                	mov    %esi,%esi
 559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000560 <strlen>:

uint
strlen(const char *s)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 566:	80 39 00             	cmpb   $0x0,(%ecx)
 569:	74 15                	je     580 <strlen+0x20>
 56b:	31 d2                	xor    %edx,%edx
 56d:	8d 76 00             	lea    0x0(%esi),%esi
 570:	83 c2 01             	add    $0x1,%edx
 573:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 577:	89 d0                	mov    %edx,%eax
 579:	75 f5                	jne    570 <strlen+0x10>
    ;
  return n;
}
 57b:	5d                   	pop    %ebp
 57c:	c3                   	ret    
 57d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 580:	31 c0                	xor    %eax,%eax
}
 582:	5d                   	pop    %ebp
 583:	c3                   	ret    
 584:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 58a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000590 <memset>:

void*
memset(void *dst, int c, uint n)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	57                   	push   %edi
 594:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 597:	8b 4d 10             	mov    0x10(%ebp),%ecx
 59a:	8b 45 0c             	mov    0xc(%ebp),%eax
 59d:	89 d7                	mov    %edx,%edi
 59f:	fc                   	cld    
 5a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 5a2:	89 d0                	mov    %edx,%eax
 5a4:	5f                   	pop    %edi
 5a5:	5d                   	pop    %ebp
 5a6:	c3                   	ret    
 5a7:	89 f6                	mov    %esi,%esi
 5a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005b0 <strchr>:

char*
strchr(const char *s, char c)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	53                   	push   %ebx
 5b4:	8b 45 08             	mov    0x8(%ebp),%eax
 5b7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 5ba:	0f b6 10             	movzbl (%eax),%edx
 5bd:	84 d2                	test   %dl,%dl
 5bf:	74 1d                	je     5de <strchr+0x2e>
    if(*s == c)
 5c1:	38 d3                	cmp    %dl,%bl
 5c3:	89 d9                	mov    %ebx,%ecx
 5c5:	75 0d                	jne    5d4 <strchr+0x24>
 5c7:	eb 17                	jmp    5e0 <strchr+0x30>
 5c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5d0:	38 ca                	cmp    %cl,%dl
 5d2:	74 0c                	je     5e0 <strchr+0x30>
  for(; *s; s++)
 5d4:	83 c0 01             	add    $0x1,%eax
 5d7:	0f b6 10             	movzbl (%eax),%edx
 5da:	84 d2                	test   %dl,%dl
 5dc:	75 f2                	jne    5d0 <strchr+0x20>
      return (char*)s;
  return 0;
 5de:	31 c0                	xor    %eax,%eax
}
 5e0:	5b                   	pop    %ebx
 5e1:	5d                   	pop    %ebp
 5e2:	c3                   	ret    
 5e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005f0 <gets>:

char*
gets(char *buf, int max)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
 5f5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 5f6:	31 f6                	xor    %esi,%esi
 5f8:	89 f3                	mov    %esi,%ebx
{
 5fa:	83 ec 1c             	sub    $0x1c,%esp
 5fd:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 600:	eb 2f                	jmp    631 <gets+0x41>
 602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 608:	8d 45 e7             	lea    -0x19(%ebp),%eax
 60b:	83 ec 04             	sub    $0x4,%esp
 60e:	6a 01                	push   $0x1
 610:	50                   	push   %eax
 611:	6a 00                	push   $0x0
 613:	e8 b2 01 00 00       	call   7ca <read>
    if(cc < 1)
 618:	83 c4 10             	add    $0x10,%esp
 61b:	85 c0                	test   %eax,%eax
 61d:	7e 1c                	jle    63b <gets+0x4b>
      break;
    buf[i++] = c;
 61f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 623:	83 c7 01             	add    $0x1,%edi
 626:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 629:	3c 0a                	cmp    $0xa,%al
 62b:	74 23                	je     650 <gets+0x60>
 62d:	3c 0d                	cmp    $0xd,%al
 62f:	74 1f                	je     650 <gets+0x60>
  for(i=0; i+1 < max; ){
 631:	83 c3 01             	add    $0x1,%ebx
 634:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 637:	89 fe                	mov    %edi,%esi
 639:	7c cd                	jl     608 <gets+0x18>
 63b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 63d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 640:	c6 03 00             	movb   $0x0,(%ebx)
}
 643:	8d 65 f4             	lea    -0xc(%ebp),%esp
 646:	5b                   	pop    %ebx
 647:	5e                   	pop    %esi
 648:	5f                   	pop    %edi
 649:	5d                   	pop    %ebp
 64a:	c3                   	ret    
 64b:	90                   	nop
 64c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 650:	8b 75 08             	mov    0x8(%ebp),%esi
 653:	8b 45 08             	mov    0x8(%ebp),%eax
 656:	01 de                	add    %ebx,%esi
 658:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 65a:	c6 03 00             	movb   $0x0,(%ebx)
}
 65d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 660:	5b                   	pop    %ebx
 661:	5e                   	pop    %esi
 662:	5f                   	pop    %edi
 663:	5d                   	pop    %ebp
 664:	c3                   	ret    
 665:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 669:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000670 <stat>:

int
stat(const char *n, struct stat *st)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	56                   	push   %esi
 674:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 675:	83 ec 08             	sub    $0x8,%esp
 678:	6a 00                	push   $0x0
 67a:	ff 75 08             	pushl  0x8(%ebp)
 67d:	e8 70 01 00 00       	call   7f2 <open>
  if(fd < 0)
 682:	83 c4 10             	add    $0x10,%esp
 685:	85 c0                	test   %eax,%eax
 687:	78 27                	js     6b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 689:	83 ec 08             	sub    $0x8,%esp
 68c:	ff 75 0c             	pushl  0xc(%ebp)
 68f:	89 c3                	mov    %eax,%ebx
 691:	50                   	push   %eax
 692:	e8 73 01 00 00       	call   80a <fstat>
  close(fd);
 697:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 69a:	89 c6                	mov    %eax,%esi
  close(fd);
 69c:	e8 39 01 00 00       	call   7da <close>
  return r;
 6a1:	83 c4 10             	add    $0x10,%esp
}
 6a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6a7:	89 f0                	mov    %esi,%eax
 6a9:	5b                   	pop    %ebx
 6aa:	5e                   	pop    %esi
 6ab:	5d                   	pop    %ebp
 6ac:	c3                   	ret    
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 6b0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 6b5:	eb ed                	jmp    6a4 <stat+0x34>
 6b7:	89 f6                	mov    %esi,%esi
 6b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006c0 <atoi>:

int
atoi(const char *s)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	53                   	push   %ebx
 6c4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 6c7:	0f be 11             	movsbl (%ecx),%edx
 6ca:	8d 42 d0             	lea    -0x30(%edx),%eax
 6cd:	3c 09                	cmp    $0x9,%al
  n = 0;
 6cf:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 6d4:	77 1f                	ja     6f5 <atoi+0x35>
 6d6:	8d 76 00             	lea    0x0(%esi),%esi
 6d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 6e0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 6e3:	83 c1 01             	add    $0x1,%ecx
 6e6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 6ea:	0f be 11             	movsbl (%ecx),%edx
 6ed:	8d 5a d0             	lea    -0x30(%edx),%ebx
 6f0:	80 fb 09             	cmp    $0x9,%bl
 6f3:	76 eb                	jbe    6e0 <atoi+0x20>
  return n;
}
 6f5:	5b                   	pop    %ebx
 6f6:	5d                   	pop    %ebp
 6f7:	c3                   	ret    
 6f8:	90                   	nop
 6f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000700 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	56                   	push   %esi
 704:	53                   	push   %ebx
 705:	8b 5d 10             	mov    0x10(%ebp),%ebx
 708:	8b 45 08             	mov    0x8(%ebp),%eax
 70b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 70e:	85 db                	test   %ebx,%ebx
 710:	7e 14                	jle    726 <memmove+0x26>
 712:	31 d2                	xor    %edx,%edx
 714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 718:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 71c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 71f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 722:	39 d3                	cmp    %edx,%ebx
 724:	75 f2                	jne    718 <memmove+0x18>
  return vdst;
}
 726:	5b                   	pop    %ebx
 727:	5e                   	pop    %esi
 728:	5d                   	pop    %ebp
 729:	c3                   	ret    
 72a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000730 <strcat>:

char *
strcat(char *d,const char *s)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	53                   	push   %ebx
 734:	8b 45 08             	mov    0x8(%ebp),%eax
 737:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *temp = d;
  while (*d)
 73a:	80 38 00             	cmpb   $0x0,(%eax)
 73d:	89 c2                	mov    %eax,%edx
 73f:	74 28                	je     769 <strcat+0x39>
 741:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ++d;
 748:	83 c2 01             	add    $0x1,%edx
  while (*d)
 74b:	80 3a 00             	cmpb   $0x0,(%edx)
 74e:	75 f8                	jne    748 <strcat+0x18>
  while (*s)
 750:	0f b6 0b             	movzbl (%ebx),%ecx
 753:	84 c9                	test   %cl,%cl
 755:	74 19                	je     770 <strcat+0x40>
 757:	89 f6                	mov    %esi,%esi
 759:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    *d++ = *s++;
 760:	83 c2 01             	add    $0x1,%edx
 763:	83 c3 01             	add    $0x1,%ebx
 766:	88 4a ff             	mov    %cl,-0x1(%edx)
  while (*s)
 769:	0f b6 0b             	movzbl (%ebx),%ecx
 76c:	84 c9                	test   %cl,%cl
 76e:	75 f0                	jne    760 <strcat+0x30>
  *d = 0;
 770:	c6 02 00             	movb   $0x0,(%edx)
  return temp;
}
 773:	5b                   	pop    %ebx
 774:	5d                   	pop    %ebp
 775:	c3                   	ret    
 776:	8d 76 00             	lea    0x0(%esi),%esi
 779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000780 <strncpy>:
char *strncpy(char *s, const char *t, int n)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	56                   	push   %esi
 784:	53                   	push   %ebx
 785:	8b 5d 10             	mov    0x10(%ebp),%ebx
 788:	8b 45 08             	mov    0x8(%ebp),%eax
 78b:	8b 75 0c             	mov    0xc(%ebp),%esi
  int i;
  char *os;
  os = s;
  for (i = 0; i < n; i++)
 78e:	85 db                	test   %ebx,%ebx
 790:	7e 14                	jle    7a6 <strncpy+0x26>
 792:	31 d2                	xor    %edx,%edx
 794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  {
    s[i] = t[i];
 798:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 79c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
  for (i = 0; i < n; i++)
 79f:	83 c2 01             	add    $0x1,%edx
 7a2:	39 d3                	cmp    %edx,%ebx
 7a4:	75 f2                	jne    798 <strncpy+0x18>
  }
  return os;
}
 7a6:	5b                   	pop    %ebx
 7a7:	5e                   	pop    %esi
 7a8:	5d                   	pop    %ebp
 7a9:	c3                   	ret    

000007aa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 7aa:	b8 01 00 00 00       	mov    $0x1,%eax
 7af:	cd 40                	int    $0x40
 7b1:	c3                   	ret    

000007b2 <exit>:
SYSCALL(exit)
 7b2:	b8 02 00 00 00       	mov    $0x2,%eax
 7b7:	cd 40                	int    $0x40
 7b9:	c3                   	ret    

000007ba <wait>:
SYSCALL(wait)
 7ba:	b8 03 00 00 00       	mov    $0x3,%eax
 7bf:	cd 40                	int    $0x40
 7c1:	c3                   	ret    

000007c2 <pipe>:
SYSCALL(pipe)
 7c2:	b8 04 00 00 00       	mov    $0x4,%eax
 7c7:	cd 40                	int    $0x40
 7c9:	c3                   	ret    

000007ca <read>:
SYSCALL(read)
 7ca:	b8 05 00 00 00       	mov    $0x5,%eax
 7cf:	cd 40                	int    $0x40
 7d1:	c3                   	ret    

000007d2 <write>:
SYSCALL(write)
 7d2:	b8 10 00 00 00       	mov    $0x10,%eax
 7d7:	cd 40                	int    $0x40
 7d9:	c3                   	ret    

000007da <close>:
SYSCALL(close)
 7da:	b8 15 00 00 00       	mov    $0x15,%eax
 7df:	cd 40                	int    $0x40
 7e1:	c3                   	ret    

000007e2 <kill>:
SYSCALL(kill)
 7e2:	b8 06 00 00 00       	mov    $0x6,%eax
 7e7:	cd 40                	int    $0x40
 7e9:	c3                   	ret    

000007ea <exec>:
SYSCALL(exec)
 7ea:	b8 07 00 00 00       	mov    $0x7,%eax
 7ef:	cd 40                	int    $0x40
 7f1:	c3                   	ret    

000007f2 <open>:
SYSCALL(open)
 7f2:	b8 0f 00 00 00       	mov    $0xf,%eax
 7f7:	cd 40                	int    $0x40
 7f9:	c3                   	ret    

000007fa <mknod>:
SYSCALL(mknod)
 7fa:	b8 11 00 00 00       	mov    $0x11,%eax
 7ff:	cd 40                	int    $0x40
 801:	c3                   	ret    

00000802 <unlink>:
SYSCALL(unlink)
 802:	b8 12 00 00 00       	mov    $0x12,%eax
 807:	cd 40                	int    $0x40
 809:	c3                   	ret    

0000080a <fstat>:
SYSCALL(fstat)
 80a:	b8 08 00 00 00       	mov    $0x8,%eax
 80f:	cd 40                	int    $0x40
 811:	c3                   	ret    

00000812 <link>:
SYSCALL(link)
 812:	b8 13 00 00 00       	mov    $0x13,%eax
 817:	cd 40                	int    $0x40
 819:	c3                   	ret    

0000081a <mkdir>:
SYSCALL(mkdir)
 81a:	b8 14 00 00 00       	mov    $0x14,%eax
 81f:	cd 40                	int    $0x40
 821:	c3                   	ret    

00000822 <chdir>:
SYSCALL(chdir)
 822:	b8 09 00 00 00       	mov    $0x9,%eax
 827:	cd 40                	int    $0x40
 829:	c3                   	ret    

0000082a <dup>:
SYSCALL(dup)
 82a:	b8 0a 00 00 00       	mov    $0xa,%eax
 82f:	cd 40                	int    $0x40
 831:	c3                   	ret    

00000832 <getpid>:
SYSCALL(getpid)
 832:	b8 0b 00 00 00       	mov    $0xb,%eax
 837:	cd 40                	int    $0x40
 839:	c3                   	ret    

0000083a <sbrk>:
SYSCALL(sbrk)
 83a:	b8 0c 00 00 00       	mov    $0xc,%eax
 83f:	cd 40                	int    $0x40
 841:	c3                   	ret    

00000842 <sleep>:
SYSCALL(sleep)
 842:	b8 0d 00 00 00       	mov    $0xd,%eax
 847:	cd 40                	int    $0x40
 849:	c3                   	ret    

0000084a <uptime>:
SYSCALL(uptime)
 84a:	b8 0e 00 00 00       	mov    $0xe,%eax
 84f:	cd 40                	int    $0x40
 851:	c3                   	ret    
 852:	66 90                	xchg   %ax,%ax
 854:	66 90                	xchg   %ax,%ax
 856:	66 90                	xchg   %ax,%ax
 858:	66 90                	xchg   %ax,%ax
 85a:	66 90                	xchg   %ax,%ax
 85c:	66 90                	xchg   %ax,%ax
 85e:	66 90                	xchg   %ax,%ax

00000860 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 860:	55                   	push   %ebp
 861:	89 e5                	mov    %esp,%ebp
 863:	57                   	push   %edi
 864:	56                   	push   %esi
 865:	53                   	push   %ebx
 866:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 869:	85 d2                	test   %edx,%edx
{
 86b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 86e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 870:	79 76                	jns    8e8 <printint+0x88>
 872:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 876:	74 70                	je     8e8 <printint+0x88>
    x = -xx;
 878:	f7 d8                	neg    %eax
    neg = 1;
 87a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 881:	31 f6                	xor    %esi,%esi
 883:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 886:	eb 0a                	jmp    892 <printint+0x32>
 888:	90                   	nop
 889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 890:	89 fe                	mov    %edi,%esi
 892:	31 d2                	xor    %edx,%edx
 894:	8d 7e 01             	lea    0x1(%esi),%edi
 897:	f7 f1                	div    %ecx
 899:	0f b6 92 bc 0c 00 00 	movzbl 0xcbc(%edx),%edx
  }while((x /= base) != 0);
 8a0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 8a2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 8a5:	75 e9                	jne    890 <printint+0x30>
  if(neg)
 8a7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 8aa:	85 c0                	test   %eax,%eax
 8ac:	74 08                	je     8b6 <printint+0x56>
    buf[i++] = '-';
 8ae:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 8b3:	8d 7e 02             	lea    0x2(%esi),%edi
 8b6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 8ba:	8b 7d c0             	mov    -0x40(%ebp),%edi
 8bd:	8d 76 00             	lea    0x0(%esi),%esi
 8c0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 8c3:	83 ec 04             	sub    $0x4,%esp
 8c6:	83 ee 01             	sub    $0x1,%esi
 8c9:	6a 01                	push   $0x1
 8cb:	53                   	push   %ebx
 8cc:	57                   	push   %edi
 8cd:	88 45 d7             	mov    %al,-0x29(%ebp)
 8d0:	e8 fd fe ff ff       	call   7d2 <write>

  while(--i >= 0)
 8d5:	83 c4 10             	add    $0x10,%esp
 8d8:	39 de                	cmp    %ebx,%esi
 8da:	75 e4                	jne    8c0 <printint+0x60>
    putc(fd, buf[i]);
}
 8dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8df:	5b                   	pop    %ebx
 8e0:	5e                   	pop    %esi
 8e1:	5f                   	pop    %edi
 8e2:	5d                   	pop    %ebp
 8e3:	c3                   	ret    
 8e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 8e8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 8ef:	eb 90                	jmp    881 <printint+0x21>
 8f1:	eb 0d                	jmp    900 <printf>
 8f3:	90                   	nop
 8f4:	90                   	nop
 8f5:	90                   	nop
 8f6:	90                   	nop
 8f7:	90                   	nop
 8f8:	90                   	nop
 8f9:	90                   	nop
 8fa:	90                   	nop
 8fb:	90                   	nop
 8fc:	90                   	nop
 8fd:	90                   	nop
 8fe:	90                   	nop
 8ff:	90                   	nop

00000900 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 900:	55                   	push   %ebp
 901:	89 e5                	mov    %esp,%ebp
 903:	57                   	push   %edi
 904:	56                   	push   %esi
 905:	53                   	push   %ebx
 906:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 909:	8b 75 0c             	mov    0xc(%ebp),%esi
 90c:	0f b6 1e             	movzbl (%esi),%ebx
 90f:	84 db                	test   %bl,%bl
 911:	0f 84 b3 00 00 00    	je     9ca <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 917:	8d 45 10             	lea    0x10(%ebp),%eax
 91a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 91d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 91f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 922:	eb 2f                	jmp    953 <printf+0x53>
 924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 928:	83 f8 25             	cmp    $0x25,%eax
 92b:	0f 84 a7 00 00 00    	je     9d8 <printf+0xd8>
  write(fd, &c, 1);
 931:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 934:	83 ec 04             	sub    $0x4,%esp
 937:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 93a:	6a 01                	push   $0x1
 93c:	50                   	push   %eax
 93d:	ff 75 08             	pushl  0x8(%ebp)
 940:	e8 8d fe ff ff       	call   7d2 <write>
 945:	83 c4 10             	add    $0x10,%esp
 948:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 94b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 94f:	84 db                	test   %bl,%bl
 951:	74 77                	je     9ca <printf+0xca>
    if(state == 0){
 953:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 955:	0f be cb             	movsbl %bl,%ecx
 958:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 95b:	74 cb                	je     928 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 95d:	83 ff 25             	cmp    $0x25,%edi
 960:	75 e6                	jne    948 <printf+0x48>
      if(c == 'd'){
 962:	83 f8 64             	cmp    $0x64,%eax
 965:	0f 84 05 01 00 00    	je     a70 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 96b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 971:	83 f9 70             	cmp    $0x70,%ecx
 974:	74 72                	je     9e8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 976:	83 f8 73             	cmp    $0x73,%eax
 979:	0f 84 99 00 00 00    	je     a18 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 97f:	83 f8 63             	cmp    $0x63,%eax
 982:	0f 84 08 01 00 00    	je     a90 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 988:	83 f8 25             	cmp    $0x25,%eax
 98b:	0f 84 ef 00 00 00    	je     a80 <printf+0x180>
  write(fd, &c, 1);
 991:	8d 45 e7             	lea    -0x19(%ebp),%eax
 994:	83 ec 04             	sub    $0x4,%esp
 997:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 99b:	6a 01                	push   $0x1
 99d:	50                   	push   %eax
 99e:	ff 75 08             	pushl  0x8(%ebp)
 9a1:	e8 2c fe ff ff       	call   7d2 <write>
 9a6:	83 c4 0c             	add    $0xc,%esp
 9a9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 9ac:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 9af:	6a 01                	push   $0x1
 9b1:	50                   	push   %eax
 9b2:	ff 75 08             	pushl  0x8(%ebp)
 9b5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 9b8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 9ba:	e8 13 fe ff ff       	call   7d2 <write>
  for(i = 0; fmt[i]; i++){
 9bf:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 9c3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 9c6:	84 db                	test   %bl,%bl
 9c8:	75 89                	jne    953 <printf+0x53>
    }
  }
}
 9ca:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9cd:	5b                   	pop    %ebx
 9ce:	5e                   	pop    %esi
 9cf:	5f                   	pop    %edi
 9d0:	5d                   	pop    %ebp
 9d1:	c3                   	ret    
 9d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 9d8:	bf 25 00 00 00       	mov    $0x25,%edi
 9dd:	e9 66 ff ff ff       	jmp    948 <printf+0x48>
 9e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 9e8:	83 ec 0c             	sub    $0xc,%esp
 9eb:	b9 10 00 00 00       	mov    $0x10,%ecx
 9f0:	6a 00                	push   $0x0
 9f2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 9f5:	8b 45 08             	mov    0x8(%ebp),%eax
 9f8:	8b 17                	mov    (%edi),%edx
 9fa:	e8 61 fe ff ff       	call   860 <printint>
        ap++;
 9ff:	89 f8                	mov    %edi,%eax
 a01:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a04:	31 ff                	xor    %edi,%edi
        ap++;
 a06:	83 c0 04             	add    $0x4,%eax
 a09:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 a0c:	e9 37 ff ff ff       	jmp    948 <printf+0x48>
 a11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 a18:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 a1b:	8b 08                	mov    (%eax),%ecx
        ap++;
 a1d:	83 c0 04             	add    $0x4,%eax
 a20:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 a23:	85 c9                	test   %ecx,%ecx
 a25:	0f 84 8e 00 00 00    	je     ab9 <printf+0x1b9>
        while(*s != 0){
 a2b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 a2e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 a30:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 a32:	84 c0                	test   %al,%al
 a34:	0f 84 0e ff ff ff    	je     948 <printf+0x48>
 a3a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 a3d:	89 de                	mov    %ebx,%esi
 a3f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 a42:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 a45:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 a48:	83 ec 04             	sub    $0x4,%esp
          s++;
 a4b:	83 c6 01             	add    $0x1,%esi
 a4e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 a51:	6a 01                	push   $0x1
 a53:	57                   	push   %edi
 a54:	53                   	push   %ebx
 a55:	e8 78 fd ff ff       	call   7d2 <write>
        while(*s != 0){
 a5a:	0f b6 06             	movzbl (%esi),%eax
 a5d:	83 c4 10             	add    $0x10,%esp
 a60:	84 c0                	test   %al,%al
 a62:	75 e4                	jne    a48 <printf+0x148>
 a64:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 a67:	31 ff                	xor    %edi,%edi
 a69:	e9 da fe ff ff       	jmp    948 <printf+0x48>
 a6e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 a70:	83 ec 0c             	sub    $0xc,%esp
 a73:	b9 0a 00 00 00       	mov    $0xa,%ecx
 a78:	6a 01                	push   $0x1
 a7a:	e9 73 ff ff ff       	jmp    9f2 <printf+0xf2>
 a7f:	90                   	nop
  write(fd, &c, 1);
 a80:	83 ec 04             	sub    $0x4,%esp
 a83:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 a86:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 a89:	6a 01                	push   $0x1
 a8b:	e9 21 ff ff ff       	jmp    9b1 <printf+0xb1>
        putc(fd, *ap);
 a90:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 a93:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 a96:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 a98:	6a 01                	push   $0x1
        ap++;
 a9a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 a9d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 aa0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 aa3:	50                   	push   %eax
 aa4:	ff 75 08             	pushl  0x8(%ebp)
 aa7:	e8 26 fd ff ff       	call   7d2 <write>
        ap++;
 aac:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 aaf:	83 c4 10             	add    $0x10,%esp
      state = 0;
 ab2:	31 ff                	xor    %edi,%edi
 ab4:	e9 8f fe ff ff       	jmp    948 <printf+0x48>
          s = "(null)";
 ab9:	bb b3 0c 00 00       	mov    $0xcb3,%ebx
        while(*s != 0){
 abe:	b8 28 00 00 00       	mov    $0x28,%eax
 ac3:	e9 72 ff ff ff       	jmp    a3a <printf+0x13a>
 ac8:	66 90                	xchg   %ax,%ax
 aca:	66 90                	xchg   %ax,%ax
 acc:	66 90                	xchg   %ax,%ax
 ace:	66 90                	xchg   %ax,%ax

00000ad0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 ad0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 ad1:	a1 44 10 00 00       	mov    0x1044,%eax
{
 ad6:	89 e5                	mov    %esp,%ebp
 ad8:	57                   	push   %edi
 ad9:	56                   	push   %esi
 ada:	53                   	push   %ebx
 adb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 ade:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 ae1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 ae8:	39 c8                	cmp    %ecx,%eax
 aea:	8b 10                	mov    (%eax),%edx
 aec:	73 32                	jae    b20 <free+0x50>
 aee:	39 d1                	cmp    %edx,%ecx
 af0:	72 04                	jb     af6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 af2:	39 d0                	cmp    %edx,%eax
 af4:	72 32                	jb     b28 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 af6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 af9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 afc:	39 fa                	cmp    %edi,%edx
 afe:	74 30                	je     b30 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 b00:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 b03:	8b 50 04             	mov    0x4(%eax),%edx
 b06:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 b09:	39 f1                	cmp    %esi,%ecx
 b0b:	74 3a                	je     b47 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 b0d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 b0f:	a3 44 10 00 00       	mov    %eax,0x1044
}
 b14:	5b                   	pop    %ebx
 b15:	5e                   	pop    %esi
 b16:	5f                   	pop    %edi
 b17:	5d                   	pop    %ebp
 b18:	c3                   	ret    
 b19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b20:	39 d0                	cmp    %edx,%eax
 b22:	72 04                	jb     b28 <free+0x58>
 b24:	39 d1                	cmp    %edx,%ecx
 b26:	72 ce                	jb     af6 <free+0x26>
{
 b28:	89 d0                	mov    %edx,%eax
 b2a:	eb bc                	jmp    ae8 <free+0x18>
 b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 b30:	03 72 04             	add    0x4(%edx),%esi
 b33:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 b36:	8b 10                	mov    (%eax),%edx
 b38:	8b 12                	mov    (%edx),%edx
 b3a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 b3d:	8b 50 04             	mov    0x4(%eax),%edx
 b40:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 b43:	39 f1                	cmp    %esi,%ecx
 b45:	75 c6                	jne    b0d <free+0x3d>
    p->s.size += bp->s.size;
 b47:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 b4a:	a3 44 10 00 00       	mov    %eax,0x1044
    p->s.size += bp->s.size;
 b4f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 b52:	8b 53 f8             	mov    -0x8(%ebx),%edx
 b55:	89 10                	mov    %edx,(%eax)
}
 b57:	5b                   	pop    %ebx
 b58:	5e                   	pop    %esi
 b59:	5f                   	pop    %edi
 b5a:	5d                   	pop    %ebp
 b5b:	c3                   	ret    
 b5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000b60 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b60:	55                   	push   %ebp
 b61:	89 e5                	mov    %esp,%ebp
 b63:	57                   	push   %edi
 b64:	56                   	push   %esi
 b65:	53                   	push   %ebx
 b66:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b69:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b6c:	8b 15 44 10 00 00    	mov    0x1044,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b72:	8d 78 07             	lea    0x7(%eax),%edi
 b75:	c1 ef 03             	shr    $0x3,%edi
 b78:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 b7b:	85 d2                	test   %edx,%edx
 b7d:	0f 84 9d 00 00 00    	je     c20 <malloc+0xc0>
 b83:	8b 02                	mov    (%edx),%eax
 b85:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 b88:	39 cf                	cmp    %ecx,%edi
 b8a:	76 6c                	jbe    bf8 <malloc+0x98>
 b8c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 b92:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b97:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 b9a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 ba1:	eb 0e                	jmp    bb1 <malloc+0x51>
 ba3:	90                   	nop
 ba4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ba8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 baa:	8b 48 04             	mov    0x4(%eax),%ecx
 bad:	39 f9                	cmp    %edi,%ecx
 baf:	73 47                	jae    bf8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 bb1:	39 05 44 10 00 00    	cmp    %eax,0x1044
 bb7:	89 c2                	mov    %eax,%edx
 bb9:	75 ed                	jne    ba8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 bbb:	83 ec 0c             	sub    $0xc,%esp
 bbe:	56                   	push   %esi
 bbf:	e8 76 fc ff ff       	call   83a <sbrk>
  if(p == (char*)-1)
 bc4:	83 c4 10             	add    $0x10,%esp
 bc7:	83 f8 ff             	cmp    $0xffffffff,%eax
 bca:	74 1c                	je     be8 <malloc+0x88>
  hp->s.size = nu;
 bcc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 bcf:	83 ec 0c             	sub    $0xc,%esp
 bd2:	83 c0 08             	add    $0x8,%eax
 bd5:	50                   	push   %eax
 bd6:	e8 f5 fe ff ff       	call   ad0 <free>
  return freep;
 bdb:	8b 15 44 10 00 00    	mov    0x1044,%edx
      if((p = morecore(nunits)) == 0)
 be1:	83 c4 10             	add    $0x10,%esp
 be4:	85 d2                	test   %edx,%edx
 be6:	75 c0                	jne    ba8 <malloc+0x48>
        return 0;
  }
}
 be8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 beb:	31 c0                	xor    %eax,%eax
}
 bed:	5b                   	pop    %ebx
 bee:	5e                   	pop    %esi
 bef:	5f                   	pop    %edi
 bf0:	5d                   	pop    %ebp
 bf1:	c3                   	ret    
 bf2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 bf8:	39 cf                	cmp    %ecx,%edi
 bfa:	74 54                	je     c50 <malloc+0xf0>
        p->s.size -= nunits;
 bfc:	29 f9                	sub    %edi,%ecx
 bfe:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 c01:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 c04:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 c07:	89 15 44 10 00 00    	mov    %edx,0x1044
}
 c0d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 c10:	83 c0 08             	add    $0x8,%eax
}
 c13:	5b                   	pop    %ebx
 c14:	5e                   	pop    %esi
 c15:	5f                   	pop    %edi
 c16:	5d                   	pop    %ebp
 c17:	c3                   	ret    
 c18:	90                   	nop
 c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 c20:	c7 05 44 10 00 00 48 	movl   $0x1048,0x1044
 c27:	10 00 00 
 c2a:	c7 05 48 10 00 00 48 	movl   $0x1048,0x1048
 c31:	10 00 00 
    base.s.size = 0;
 c34:	b8 48 10 00 00       	mov    $0x1048,%eax
 c39:	c7 05 4c 10 00 00 00 	movl   $0x0,0x104c
 c40:	00 00 00 
 c43:	e9 44 ff ff ff       	jmp    b8c <malloc+0x2c>
 c48:	90                   	nop
 c49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 c50:	8b 08                	mov    (%eax),%ecx
 c52:	89 0a                	mov    %ecx,(%edx)
 c54:	eb b1                	jmp    c07 <malloc+0xa7>
