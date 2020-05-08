
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
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx

    if (argc < 2)
   f:	83 39 01             	cmpl   $0x1,(%ecx)
{
  12:	8b 59 04             	mov    0x4(%ecx),%ebx
    if (argc < 2)
  15:	0f 8e 85 00 00 00    	jle    a0 <main+0xa0>
        depth = 10000;
        ls(".",0);
        exit();
    }
    else{
        if(strcmp(argv[1],"-d") == 0){
  1b:	50                   	push   %eax
  1c:	50                   	push   %eax
  1d:	68 6d 0c 00 00       	push   $0xc6d
  22:	ff 73 04             	pushl  0x4(%ebx)
  25:	e8 a6 04 00 00       	call   4d0 <strcmp>
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	75 28                	jne    59 <main+0x59>
            flag = 1;
            depth = 10000;
            ls(argv[2],0);
  31:	50                   	push   %eax
  32:	50                   	push   %eax
  33:	6a 00                	push   $0x0
  35:	ff 73 08             	pushl  0x8(%ebx)
            flag = 1;
  38:	c7 05 ec 0f 00 00 01 	movl   $0x1,0xfec
  3f:	00 00 00 
            depth = 10000;
  42:	c7 05 f0 0f 00 00 10 	movl   $0x2710,0xff0
  49:	27 00 00 
            ls(argv[2],0);
  4c:	e8 2f 01 00 00       	call   180 <ls>
  51:	83 c4 10             	add    $0x10,%esp
        {
            depth = 10000;
            ls(argv[1],0);
        }
    }
    exit();
  54:	e8 19 07 00 00       	call   772 <exit>
        else if (strcmp(argv[1],"-L") == 0)
  59:	50                   	push   %eax
  5a:	50                   	push   %eax
  5b:	68 70 0c 00 00       	push   $0xc70
  60:	ff 73 04             	pushl  0x4(%ebx)
  63:	e8 68 04 00 00       	call   4d0 <strcmp>
  68:	83 c4 10             	add    $0x10,%esp
  6b:	85 c0                	test   %eax,%eax
  6d:	75 4e                	jne    bd <main+0xbd>
            int temp = atoi(argv[3]);
  6f:	83 ec 0c             	sub    $0xc,%esp
  72:	ff 73 0c             	pushl  0xc(%ebx)
  75:	e8 06 06 00 00       	call   680 <atoi>
            printf(2,"%d",depth);
  7a:	83 c4 0c             	add    $0xc,%esp
            depth = temp;
  7d:	a3 f0 0f 00 00       	mov    %eax,0xff0
            printf(2,"%d",depth);
  82:	50                   	push   %eax
  83:	68 73 0c 00 00       	push   $0xc73
  88:	6a 02                	push   $0x2
  8a:	e8 31 08 00 00       	call   8c0 <printf>
            ls(argv[2], 0);
  8f:	5a                   	pop    %edx
  90:	59                   	pop    %ecx
  91:	6a 00                	push   $0x0
  93:	ff 73 08             	pushl  0x8(%ebx)
  96:	e8 e5 00 00 00       	call   180 <ls>
  9b:	83 c4 10             	add    $0x10,%esp
  9e:	eb b4                	jmp    54 <main+0x54>
        ls(".",0);
  a0:	50                   	push   %eax
  a1:	50                   	push   %eax
  a2:	6a 00                	push   $0x0
  a4:	68 6b 0c 00 00       	push   $0xc6b
        depth = 10000;
  a9:	c7 05 f0 0f 00 00 10 	movl   $0x2710,0xff0
  b0:	27 00 00 
        ls(".",0);
  b3:	e8 c8 00 00 00       	call   180 <ls>
        exit();
  b8:	e8 b5 06 00 00       	call   772 <exit>
            ls(argv[1],0);
  bd:	50                   	push   %eax
  be:	50                   	push   %eax
  bf:	6a 00                	push   $0x0
  c1:	ff 73 04             	pushl  0x4(%ebx)
            depth = 10000;
  c4:	c7 05 f0 0f 00 00 10 	movl   $0x2710,0xff0
  cb:	27 00 00 
            ls(argv[1],0);
  ce:	e8 ad 00 00 00       	call   180 <ls>
  d3:	83 c4 10             	add    $0x10,%esp
  d6:	e9 79 ff ff ff       	jmp    54 <main+0x54>
  db:	66 90                	xchg   %ax,%ax
  dd:	66 90                	xchg   %ax,%ax
  df:	90                   	nop

000000e0 <fmtname>:
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	56                   	push   %esi
  e4:	53                   	push   %ebx
  e5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    for (p = path + strlen(path); p >= path && *p != '/'; p--)
  e8:	83 ec 0c             	sub    $0xc,%esp
  eb:	53                   	push   %ebx
  ec:	e8 2f 04 00 00       	call   520 <strlen>
  f1:	83 c4 10             	add    $0x10,%esp
  f4:	01 d8                	add    %ebx,%eax
  f6:	73 0f                	jae    107 <fmtname+0x27>
  f8:	eb 12                	jmp    10c <fmtname+0x2c>
  fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 100:	83 e8 01             	sub    $0x1,%eax
 103:	39 c3                	cmp    %eax,%ebx
 105:	77 05                	ja     10c <fmtname+0x2c>
 107:	80 38 2f             	cmpb   $0x2f,(%eax)
 10a:	75 f4                	jne    100 <fmtname+0x20>
    p++;
 10c:	8d 58 01             	lea    0x1(%eax),%ebx
    if (strlen(p) >= DIRSIZ)
 10f:	83 ec 0c             	sub    $0xc,%esp
 112:	53                   	push   %ebx
 113:	e8 08 04 00 00       	call   520 <strlen>
 118:	83 c4 10             	add    $0x10,%esp
 11b:	83 f8 0d             	cmp    $0xd,%eax
 11e:	77 4a                	ja     16a <fmtname+0x8a>
    memmove(buf, p, strlen(p));
 120:	83 ec 0c             	sub    $0xc,%esp
 123:	53                   	push   %ebx
 124:	e8 f7 03 00 00       	call   520 <strlen>
 129:	83 c4 0c             	add    $0xc,%esp
 12c:	50                   	push   %eax
 12d:	53                   	push   %ebx
 12e:	68 f4 0f 00 00       	push   $0xff4
 133:	e8 88 05 00 00       	call   6c0 <memmove>
    memset(buf + strlen(p), ' ', DIRSIZ - strlen(p));
 138:	89 1c 24             	mov    %ebx,(%esp)
 13b:	e8 e0 03 00 00       	call   520 <strlen>
 140:	89 1c 24             	mov    %ebx,(%esp)
 143:	89 c6                	mov    %eax,%esi
    return buf;
 145:	bb f4 0f 00 00       	mov    $0xff4,%ebx
    memset(buf + strlen(p), ' ', DIRSIZ - strlen(p));
 14a:	e8 d1 03 00 00       	call   520 <strlen>
 14f:	ba 0e 00 00 00       	mov    $0xe,%edx
 154:	83 c4 0c             	add    $0xc,%esp
 157:	05 f4 0f 00 00       	add    $0xff4,%eax
 15c:	29 f2                	sub    %esi,%edx
 15e:	52                   	push   %edx
 15f:	6a 20                	push   $0x20
 161:	50                   	push   %eax
 162:	e8 e9 03 00 00       	call   550 <memset>
    return buf;
 167:	83 c4 10             	add    $0x10,%esp
}
 16a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 16d:	89 d8                	mov    %ebx,%eax
 16f:	5b                   	pop    %ebx
 170:	5e                   	pop    %esi
 171:	5d                   	pop    %ebp
 172:	c3                   	ret    
 173:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000180 <ls>:
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	57                   	push   %edi
 184:	56                   	push   %esi
 185:	53                   	push   %ebx
 186:	81 ec 5c 02 00 00    	sub    $0x25c,%esp
    if(level == depth){
 18c:	8b 45 0c             	mov    0xc(%ebp),%eax
 18f:	39 05 f0 0f 00 00    	cmp    %eax,0xff0
 195:	75 09                	jne    1a0 <ls+0x20>
}
 197:	8d 65 f4             	lea    -0xc(%ebp),%esp
 19a:	5b                   	pop    %ebx
 19b:	5e                   	pop    %esi
 19c:	5f                   	pop    %edi
 19d:	5d                   	pop    %ebp
 19e:	c3                   	ret    
 19f:	90                   	nop
    if ((fd = open(path, 0)) < 0)
 1a0:	83 ec 08             	sub    $0x8,%esp
 1a3:	6a 00                	push   $0x0
 1a5:	ff 75 08             	pushl  0x8(%ebp)
 1a8:	e8 05 06 00 00       	call   7b2 <open>
 1ad:	83 c4 10             	add    $0x10,%esp
 1b0:	85 c0                	test   %eax,%eax
 1b2:	89 c3                	mov    %eax,%ebx
 1b4:	0f 88 16 02 00 00    	js     3d0 <ls+0x250>
    if (fstat(fd, &st) < 0)
 1ba:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 1c0:	83 ec 08             	sub    $0x8,%esp
 1c3:	56                   	push   %esi
 1c4:	50                   	push   %eax
 1c5:	e8 00 06 00 00       	call   7ca <fstat>
 1ca:	83 c4 10             	add    $0x10,%esp
 1cd:	85 c0                	test   %eax,%eax
 1cf:	0f 88 1b 02 00 00    	js     3f0 <ls+0x270>
    switch (st.type)
 1d5:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 1dc:	66 83 f8 01          	cmp    $0x1,%ax
 1e0:	74 4e                	je     230 <ls+0xb0>
 1e2:	66 83 f8 02          	cmp    $0x2,%ax
 1e6:	75 31                	jne    219 <ls+0x99>
        printf(1, "FILE = %d %s %d %d %d\n", level, fmtname(path), st.type, st.ino, st.size);
 1e8:	83 ec 0c             	sub    $0xc,%esp
 1eb:	8b bd e4 fd ff ff    	mov    -0x21c(%ebp),%edi
 1f1:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 1f7:	ff 75 08             	pushl  0x8(%ebp)
 1fa:	e8 e1 fe ff ff       	call   e0 <fmtname>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	57                   	push   %edi
 203:	56                   	push   %esi
 204:	6a 02                	push   $0x2
 206:	50                   	push   %eax
 207:	ff 75 0c             	pushl  0xc(%ebp)
 20a:	68 40 0c 00 00       	push   $0xc40
 20f:	6a 01                	push   $0x1
 211:	e8 aa 06 00 00       	call   8c0 <printf>
        break;
 216:	83 c4 20             	add    $0x20,%esp
    close(fd);
 219:	83 ec 0c             	sub    $0xc,%esp
 21c:	53                   	push   %ebx
 21d:	e8 78 05 00 00       	call   79a <close>
 222:	83 c4 10             	add    $0x10,%esp
}
 225:	8d 65 f4             	lea    -0xc(%ebp),%esp
 228:	5b                   	pop    %ebx
 229:	5e                   	pop    %esi
 22a:	5f                   	pop    %edi
 22b:	5d                   	pop    %ebp
 22c:	c3                   	ret    
 22d:	8d 76 00             	lea    0x0(%esi),%esi
        if (strlen(path) + 1 + DIRSIZ + 1 > sizeof buf)
 230:	83 ec 0c             	sub    $0xc,%esp
 233:	ff 75 08             	pushl  0x8(%ebp)
 236:	e8 e5 02 00 00       	call   520 <strlen>
 23b:	83 c0 10             	add    $0x10,%eax
 23e:	83 c4 10             	add    $0x10,%esp
 241:	3d 00 02 00 00       	cmp    $0x200,%eax
 246:	0f 87 cc 01 00 00    	ja     418 <ls+0x298>
        strcpy(buf, path);
 24c:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 252:	83 ec 08             	sub    $0x8,%esp
 255:	ff 75 08             	pushl  0x8(%ebp)
 258:	8d bd c4 fd ff ff    	lea    -0x23c(%ebp),%edi
 25e:	50                   	push   %eax
 25f:	e8 3c 02 00 00       	call   4a0 <strcpy>
        p = buf + strlen(buf);
 264:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 26a:	89 04 24             	mov    %eax,(%esp)
 26d:	e8 ae 02 00 00       	call   520 <strlen>
 272:	8d 8d e8 fd ff ff    	lea    -0x218(%ebp),%ecx
        while (read(fd, &de, sizeof(de)) == sizeof(de))
 278:	83 c4 10             	add    $0x10,%esp
        p = buf + strlen(buf);
 27b:	01 c8                	add    %ecx,%eax
        *p++ = '/';
 27d:	8d 50 01             	lea    0x1(%eax),%edx
        p = buf + strlen(buf);
 280:	89 85 b0 fd ff ff    	mov    %eax,-0x250(%ebp)
        *p++ = '/';
 286:	c6 00 2f             	movb   $0x2f,(%eax)
 289:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
        while (read(fd, &de, sizeof(de)) == sizeof(de))
 28f:	83 ec 04             	sub    $0x4,%esp
 292:	6a 10                	push   $0x10
 294:	57                   	push   %edi
 295:	53                   	push   %ebx
 296:	e8 ef 04 00 00       	call   78a <read>
 29b:	83 c4 10             	add    $0x10,%esp
 29e:	83 f8 10             	cmp    $0x10,%eax
 2a1:	0f 85 72 ff ff ff    	jne    219 <ls+0x99>
            if (de.inum == 0)
 2a7:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 2ae:	00 
 2af:	74 de                	je     28f <ls+0x10f>
            memmove(p, de.name, DIRSIZ);
 2b1:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 2b7:	83 ec 04             	sub    $0x4,%esp
 2ba:	6a 0e                	push   $0xe
 2bc:	50                   	push   %eax
 2bd:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 2c3:	e8 f8 03 00 00       	call   6c0 <memmove>
            if (strcmp(de.name, ".") == 0 || strcmp(de.name, "..") == 0) continue;
 2c8:	59                   	pop    %ecx
 2c9:	58                   	pop    %eax
 2ca:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 2d0:	68 6b 0c 00 00       	push   $0xc6b
 2d5:	50                   	push   %eax
 2d6:	e8 f5 01 00 00       	call   4d0 <strcmp>
 2db:	83 c4 10             	add    $0x10,%esp
 2de:	85 c0                	test   %eax,%eax
 2e0:	74 ad                	je     28f <ls+0x10f>
 2e2:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 2e8:	83 ec 08             	sub    $0x8,%esp
 2eb:	68 6a 0c 00 00       	push   $0xc6a
 2f0:	50                   	push   %eax
 2f1:	e8 da 01 00 00       	call   4d0 <strcmp>
 2f6:	83 c4 10             	add    $0x10,%esp
 2f9:	85 c0                	test   %eax,%eax
 2fb:	74 92                	je     28f <ls+0x10f>
            p[DIRSIZ] = 0;
 2fd:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
            if (stat(buf, &st) < 0)
 303:	83 ec 08             	sub    $0x8,%esp
            p[DIRSIZ] = 0;
 306:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
            if (stat(buf, &st) < 0)
 30a:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 310:	56                   	push   %esi
 311:	50                   	push   %eax
 312:	e8 19 03 00 00       	call   630 <stat>
 317:	83 c4 10             	add    $0x10,%esp
 31a:	85 c0                	test   %eax,%eax
 31c:	0f 88 59 01 00 00    	js     47b <ls+0x2fb>
            if(flag == 1){
 322:	83 3d ec 0f 00 00 01 	cmpl   $0x1,0xfec
 329:	0f b7 95 d4 fd ff ff 	movzwl -0x22c(%ebp),%edx
 330:	0f 85 f9 00 00 00    	jne    42f <ls+0x2af>
                if (st.type == 1)
 336:	66 83 fa 01          	cmp    $0x1,%dx
 33a:	0f 85 4f ff ff ff    	jne    28f <ls+0x10f>
                    printf(1, "%d %s %d %d %d\n",level, fmtname(buf), st.type, st.ino, st.size);
 340:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 346:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 34c:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
 352:	83 ec 0c             	sub    $0xc,%esp
 355:	50                   	push   %eax
 356:	89 8d a8 fd ff ff    	mov    %ecx,-0x258(%ebp)
 35c:	89 95 ac fd ff ff    	mov    %edx,-0x254(%ebp)
 362:	e8 79 fd ff ff       	call   e0 <fmtname>
 367:	8b 8d a8 fd ff ff    	mov    -0x258(%ebp),%ecx
 36d:	8b 95 ac fd ff ff    	mov    -0x254(%ebp),%edx
 373:	83 c4 0c             	add    $0xc,%esp
 376:	51                   	push   %ecx
 377:	52                   	push   %edx
 378:	6a 01                	push   $0x1
                printf(1, "%d %s %d %d %d\n",level, fmtname(buf), st.type, st.ino, st.size);
 37a:	50                   	push   %eax
 37b:	ff 75 0c             	pushl  0xc(%ebp)
 37e:	68 47 0c 00 00       	push   $0xc47
 383:	6a 01                	push   $0x1
 385:	e8 36 05 00 00       	call   8c0 <printf>
 38a:	83 c4 20             	add    $0x20,%esp
            if(st.type == 1 && level < depth){
 38d:	66 83 bd d4 fd ff ff 	cmpw   $0x1,-0x22c(%ebp)
 394:	01 
 395:	0f 85 f4 fe ff ff    	jne    28f <ls+0x10f>
 39b:	8b 45 0c             	mov    0xc(%ebp),%eax
 39e:	39 05 f0 0f 00 00    	cmp    %eax,0xff0
 3a4:	0f 8e e5 fe ff ff    	jle    28f <ls+0x10f>
                int temp = level+1;
 3aa:	83 c0 01             	add    $0x1,%eax
                ls(buf,temp);
 3ad:	52                   	push   %edx
 3ae:	52                   	push   %edx
 3af:	50                   	push   %eax
 3b0:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 3b6:	50                   	push   %eax
 3b7:	e8 c4 fd ff ff       	call   180 <ls>
                sleep(1);
 3bc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 3c3:	e8 3a 04 00 00       	call   802 <sleep>
 3c8:	83 c4 10             	add    $0x10,%esp
 3cb:	e9 bf fe ff ff       	jmp    28f <ls+0x10f>
        printf(2, "ls: cannot open %s\n", path);
 3d0:	83 ec 04             	sub    $0x4,%esp
 3d3:	ff 75 08             	pushl  0x8(%ebp)
 3d6:	68 18 0c 00 00       	push   $0xc18
 3db:	6a 02                	push   $0x2
 3dd:	e8 de 04 00 00       	call   8c0 <printf>
        return;
 3e2:	83 c4 10             	add    $0x10,%esp
}
 3e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3e8:	5b                   	pop    %ebx
 3e9:	5e                   	pop    %esi
 3ea:	5f                   	pop    %edi
 3eb:	5d                   	pop    %ebp
 3ec:	c3                   	ret    
 3ed:	8d 76 00             	lea    0x0(%esi),%esi
        printf(2, "ls: cannot stat %s\n", path);
 3f0:	83 ec 04             	sub    $0x4,%esp
 3f3:	ff 75 08             	pushl  0x8(%ebp)
 3f6:	68 2c 0c 00 00       	push   $0xc2c
 3fb:	6a 02                	push   $0x2
 3fd:	e8 be 04 00 00       	call   8c0 <printf>
        close(fd);
 402:	89 1c 24             	mov    %ebx,(%esp)
 405:	e8 90 03 00 00       	call   79a <close>
        return;
 40a:	83 c4 10             	add    $0x10,%esp
 40d:	e9 85 fd ff ff       	jmp    197 <ls+0x17>
 412:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            printf(1, "ls: path too long\n");
 418:	83 ec 08             	sub    $0x8,%esp
 41b:	68 57 0c 00 00       	push   $0xc57
 420:	6a 01                	push   $0x1
 422:	e8 99 04 00 00       	call   8c0 <printf>
            break;
 427:	83 c4 10             	add    $0x10,%esp
 42a:	e9 ea fd ff ff       	jmp    219 <ls+0x99>
                printf(1, "%d %s %d %d %d\n",level, fmtname(buf), st.type, st.ino, st.size);
 42f:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 435:	83 ec 0c             	sub    $0xc,%esp
 438:	8b 85 dc fd ff ff    	mov    -0x224(%ebp),%eax
 43e:	89 95 a4 fd ff ff    	mov    %edx,-0x25c(%ebp)
 444:	89 8d a8 fd ff ff    	mov    %ecx,-0x258(%ebp)
 44a:	8d 8d e8 fd ff ff    	lea    -0x218(%ebp),%ecx
 450:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
 456:	51                   	push   %ecx
 457:	e8 84 fc ff ff       	call   e0 <fmtname>
 45c:	8b 95 a4 fd ff ff    	mov    -0x25c(%ebp),%edx
 462:	8b 8d a8 fd ff ff    	mov    -0x258(%ebp),%ecx
 468:	83 c4 0c             	add    $0xc,%esp
 46b:	0f bf d2             	movswl %dx,%edx
 46e:	51                   	push   %ecx
 46f:	ff b5 ac fd ff ff    	pushl  -0x254(%ebp)
 475:	52                   	push   %edx
 476:	e9 ff fe ff ff       	jmp    37a <ls+0x1fa>
                printf(1, "ls: cannot stat %s\n", buf);
 47b:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 481:	83 ec 04             	sub    $0x4,%esp
 484:	50                   	push   %eax
 485:	68 2c 0c 00 00       	push   $0xc2c
 48a:	6a 01                	push   $0x1
 48c:	e8 2f 04 00 00       	call   8c0 <printf>
                continue;
 491:	83 c4 10             	add    $0x10,%esp
 494:	e9 f6 fd ff ff       	jmp    28f <ls+0x10f>
 499:	66 90                	xchg   %ax,%ax
 49b:	66 90                	xchg   %ax,%ax
 49d:	66 90                	xchg   %ax,%ax
 49f:	90                   	nop

000004a0 <strcpy>:
#include "x86.h"
#include "fcntl.h"

char*
strcpy(char *s, const char *t)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	8b 45 08             	mov    0x8(%ebp),%eax
 4a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 4aa:	89 c2                	mov    %eax,%edx
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4b0:	83 c1 01             	add    $0x1,%ecx
 4b3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 4b7:	83 c2 01             	add    $0x1,%edx
 4ba:	84 db                	test   %bl,%bl
 4bc:	88 5a ff             	mov    %bl,-0x1(%edx)
 4bf:	75 ef                	jne    4b0 <strcpy+0x10>
    ;
  return os;
}
 4c1:	5b                   	pop    %ebx
 4c2:	5d                   	pop    %ebp
 4c3:	c3                   	ret    
 4c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000004d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	53                   	push   %ebx
 4d4:	8b 55 08             	mov    0x8(%ebp),%edx
 4d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 4da:	0f b6 02             	movzbl (%edx),%eax
 4dd:	0f b6 19             	movzbl (%ecx),%ebx
 4e0:	84 c0                	test   %al,%al
 4e2:	75 1c                	jne    500 <strcmp+0x30>
 4e4:	eb 2a                	jmp    510 <strcmp+0x40>
 4e6:	8d 76 00             	lea    0x0(%esi),%esi
 4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 4f0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 4f3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 4f6:	83 c1 01             	add    $0x1,%ecx
 4f9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 4fc:	84 c0                	test   %al,%al
 4fe:	74 10                	je     510 <strcmp+0x40>
 500:	38 d8                	cmp    %bl,%al
 502:	74 ec                	je     4f0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 504:	29 d8                	sub    %ebx,%eax
}
 506:	5b                   	pop    %ebx
 507:	5d                   	pop    %ebp
 508:	c3                   	ret    
 509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 510:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 512:	29 d8                	sub    %ebx,%eax
}
 514:	5b                   	pop    %ebx
 515:	5d                   	pop    %ebp
 516:	c3                   	ret    
 517:	89 f6                	mov    %esi,%esi
 519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000520 <strlen>:

uint
strlen(const char *s)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 526:	80 39 00             	cmpb   $0x0,(%ecx)
 529:	74 15                	je     540 <strlen+0x20>
 52b:	31 d2                	xor    %edx,%edx
 52d:	8d 76 00             	lea    0x0(%esi),%esi
 530:	83 c2 01             	add    $0x1,%edx
 533:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 537:	89 d0                	mov    %edx,%eax
 539:	75 f5                	jne    530 <strlen+0x10>
    ;
  return n;
}
 53b:	5d                   	pop    %ebp
 53c:	c3                   	ret    
 53d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 540:	31 c0                	xor    %eax,%eax
}
 542:	5d                   	pop    %ebp
 543:	c3                   	ret    
 544:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 54a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000550 <memset>:

void*
memset(void *dst, int c, uint n)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	57                   	push   %edi
 554:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 557:	8b 4d 10             	mov    0x10(%ebp),%ecx
 55a:	8b 45 0c             	mov    0xc(%ebp),%eax
 55d:	89 d7                	mov    %edx,%edi
 55f:	fc                   	cld    
 560:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 562:	89 d0                	mov    %edx,%eax
 564:	5f                   	pop    %edi
 565:	5d                   	pop    %ebp
 566:	c3                   	ret    
 567:	89 f6                	mov    %esi,%esi
 569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000570 <strchr>:

char*
strchr(const char *s, char c)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	53                   	push   %ebx
 574:	8b 45 08             	mov    0x8(%ebp),%eax
 577:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 57a:	0f b6 10             	movzbl (%eax),%edx
 57d:	84 d2                	test   %dl,%dl
 57f:	74 1d                	je     59e <strchr+0x2e>
    if(*s == c)
 581:	38 d3                	cmp    %dl,%bl
 583:	89 d9                	mov    %ebx,%ecx
 585:	75 0d                	jne    594 <strchr+0x24>
 587:	eb 17                	jmp    5a0 <strchr+0x30>
 589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 590:	38 ca                	cmp    %cl,%dl
 592:	74 0c                	je     5a0 <strchr+0x30>
  for(; *s; s++)
 594:	83 c0 01             	add    $0x1,%eax
 597:	0f b6 10             	movzbl (%eax),%edx
 59a:	84 d2                	test   %dl,%dl
 59c:	75 f2                	jne    590 <strchr+0x20>
      return (char*)s;
  return 0;
 59e:	31 c0                	xor    %eax,%eax
}
 5a0:	5b                   	pop    %ebx
 5a1:	5d                   	pop    %ebp
 5a2:	c3                   	ret    
 5a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005b0 <gets>:

char*
gets(char *buf, int max)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	56                   	push   %esi
 5b5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 5b6:	31 f6                	xor    %esi,%esi
 5b8:	89 f3                	mov    %esi,%ebx
{
 5ba:	83 ec 1c             	sub    $0x1c,%esp
 5bd:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 5c0:	eb 2f                	jmp    5f1 <gets+0x41>
 5c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 5c8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5cb:	83 ec 04             	sub    $0x4,%esp
 5ce:	6a 01                	push   $0x1
 5d0:	50                   	push   %eax
 5d1:	6a 00                	push   $0x0
 5d3:	e8 b2 01 00 00       	call   78a <read>
    if(cc < 1)
 5d8:	83 c4 10             	add    $0x10,%esp
 5db:	85 c0                	test   %eax,%eax
 5dd:	7e 1c                	jle    5fb <gets+0x4b>
      break;
    buf[i++] = c;
 5df:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 5e3:	83 c7 01             	add    $0x1,%edi
 5e6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 5e9:	3c 0a                	cmp    $0xa,%al
 5eb:	74 23                	je     610 <gets+0x60>
 5ed:	3c 0d                	cmp    $0xd,%al
 5ef:	74 1f                	je     610 <gets+0x60>
  for(i=0; i+1 < max; ){
 5f1:	83 c3 01             	add    $0x1,%ebx
 5f4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 5f7:	89 fe                	mov    %edi,%esi
 5f9:	7c cd                	jl     5c8 <gets+0x18>
 5fb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 5fd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 600:	c6 03 00             	movb   $0x0,(%ebx)
}
 603:	8d 65 f4             	lea    -0xc(%ebp),%esp
 606:	5b                   	pop    %ebx
 607:	5e                   	pop    %esi
 608:	5f                   	pop    %edi
 609:	5d                   	pop    %ebp
 60a:	c3                   	ret    
 60b:	90                   	nop
 60c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 610:	8b 75 08             	mov    0x8(%ebp),%esi
 613:	8b 45 08             	mov    0x8(%ebp),%eax
 616:	01 de                	add    %ebx,%esi
 618:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 61a:	c6 03 00             	movb   $0x0,(%ebx)
}
 61d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 620:	5b                   	pop    %ebx
 621:	5e                   	pop    %esi
 622:	5f                   	pop    %edi
 623:	5d                   	pop    %ebp
 624:	c3                   	ret    
 625:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000630 <stat>:

int
stat(const char *n, struct stat *st)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	56                   	push   %esi
 634:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 635:	83 ec 08             	sub    $0x8,%esp
 638:	6a 00                	push   $0x0
 63a:	ff 75 08             	pushl  0x8(%ebp)
 63d:	e8 70 01 00 00       	call   7b2 <open>
  if(fd < 0)
 642:	83 c4 10             	add    $0x10,%esp
 645:	85 c0                	test   %eax,%eax
 647:	78 27                	js     670 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 649:	83 ec 08             	sub    $0x8,%esp
 64c:	ff 75 0c             	pushl  0xc(%ebp)
 64f:	89 c3                	mov    %eax,%ebx
 651:	50                   	push   %eax
 652:	e8 73 01 00 00       	call   7ca <fstat>
  close(fd);
 657:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 65a:	89 c6                	mov    %eax,%esi
  close(fd);
 65c:	e8 39 01 00 00       	call   79a <close>
  return r;
 661:	83 c4 10             	add    $0x10,%esp
}
 664:	8d 65 f8             	lea    -0x8(%ebp),%esp
 667:	89 f0                	mov    %esi,%eax
 669:	5b                   	pop    %ebx
 66a:	5e                   	pop    %esi
 66b:	5d                   	pop    %ebp
 66c:	c3                   	ret    
 66d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 670:	be ff ff ff ff       	mov    $0xffffffff,%esi
 675:	eb ed                	jmp    664 <stat+0x34>
 677:	89 f6                	mov    %esi,%esi
 679:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000680 <atoi>:

int
atoi(const char *s)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	53                   	push   %ebx
 684:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 687:	0f be 11             	movsbl (%ecx),%edx
 68a:	8d 42 d0             	lea    -0x30(%edx),%eax
 68d:	3c 09                	cmp    $0x9,%al
  n = 0;
 68f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 694:	77 1f                	ja     6b5 <atoi+0x35>
 696:	8d 76 00             	lea    0x0(%esi),%esi
 699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 6a0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 6a3:	83 c1 01             	add    $0x1,%ecx
 6a6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 6aa:	0f be 11             	movsbl (%ecx),%edx
 6ad:	8d 5a d0             	lea    -0x30(%edx),%ebx
 6b0:	80 fb 09             	cmp    $0x9,%bl
 6b3:	76 eb                	jbe    6a0 <atoi+0x20>
  return n;
}
 6b5:	5b                   	pop    %ebx
 6b6:	5d                   	pop    %ebp
 6b7:	c3                   	ret    
 6b8:	90                   	nop
 6b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000006c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	56                   	push   %esi
 6c4:	53                   	push   %ebx
 6c5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 6c8:	8b 45 08             	mov    0x8(%ebp),%eax
 6cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6ce:	85 db                	test   %ebx,%ebx
 6d0:	7e 14                	jle    6e6 <memmove+0x26>
 6d2:	31 d2                	xor    %edx,%edx
 6d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 6d8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 6dc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 6df:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 6e2:	39 d3                	cmp    %edx,%ebx
 6e4:	75 f2                	jne    6d8 <memmove+0x18>
  return vdst;
}
 6e6:	5b                   	pop    %ebx
 6e7:	5e                   	pop    %esi
 6e8:	5d                   	pop    %ebp
 6e9:	c3                   	ret    
 6ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000006f0 <strcat>:

char *
strcat(char *d,const char *s)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	53                   	push   %ebx
 6f4:	8b 45 08             	mov    0x8(%ebp),%eax
 6f7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *temp = d;
  while (*d)
 6fa:	80 38 00             	cmpb   $0x0,(%eax)
 6fd:	89 c2                	mov    %eax,%edx
 6ff:	74 28                	je     729 <strcat+0x39>
 701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ++d;
 708:	83 c2 01             	add    $0x1,%edx
  while (*d)
 70b:	80 3a 00             	cmpb   $0x0,(%edx)
 70e:	75 f8                	jne    708 <strcat+0x18>
  while (*s)
 710:	0f b6 0b             	movzbl (%ebx),%ecx
 713:	84 c9                	test   %cl,%cl
 715:	74 19                	je     730 <strcat+0x40>
 717:	89 f6                	mov    %esi,%esi
 719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    *d++ = *s++;
 720:	83 c2 01             	add    $0x1,%edx
 723:	83 c3 01             	add    $0x1,%ebx
 726:	88 4a ff             	mov    %cl,-0x1(%edx)
  while (*s)
 729:	0f b6 0b             	movzbl (%ebx),%ecx
 72c:	84 c9                	test   %cl,%cl
 72e:	75 f0                	jne    720 <strcat+0x30>
  *d = 0;
 730:	c6 02 00             	movb   $0x0,(%edx)
  return temp;
}
 733:	5b                   	pop    %ebx
 734:	5d                   	pop    %ebp
 735:	c3                   	ret    
 736:	8d 76 00             	lea    0x0(%esi),%esi
 739:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000740 <strncpy>:
char *strncpy(char *s, const char *t, int n)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	56                   	push   %esi
 744:	53                   	push   %ebx
 745:	8b 5d 10             	mov    0x10(%ebp),%ebx
 748:	8b 45 08             	mov    0x8(%ebp),%eax
 74b:	8b 75 0c             	mov    0xc(%ebp),%esi
  int i;
  char *os;
  os = s;
  for (i = 0; i < n; i++)
 74e:	85 db                	test   %ebx,%ebx
 750:	7e 14                	jle    766 <strncpy+0x26>
 752:	31 d2                	xor    %edx,%edx
 754:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  {
    s[i] = t[i];
 758:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 75c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
  for (i = 0; i < n; i++)
 75f:	83 c2 01             	add    $0x1,%edx
 762:	39 d3                	cmp    %edx,%ebx
 764:	75 f2                	jne    758 <strncpy+0x18>
  }
  return os;
}
 766:	5b                   	pop    %ebx
 767:	5e                   	pop    %esi
 768:	5d                   	pop    %ebp
 769:	c3                   	ret    

0000076a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 76a:	b8 01 00 00 00       	mov    $0x1,%eax
 76f:	cd 40                	int    $0x40
 771:	c3                   	ret    

00000772 <exit>:
SYSCALL(exit)
 772:	b8 02 00 00 00       	mov    $0x2,%eax
 777:	cd 40                	int    $0x40
 779:	c3                   	ret    

0000077a <wait>:
SYSCALL(wait)
 77a:	b8 03 00 00 00       	mov    $0x3,%eax
 77f:	cd 40                	int    $0x40
 781:	c3                   	ret    

00000782 <pipe>:
SYSCALL(pipe)
 782:	b8 04 00 00 00       	mov    $0x4,%eax
 787:	cd 40                	int    $0x40
 789:	c3                   	ret    

0000078a <read>:
SYSCALL(read)
 78a:	b8 05 00 00 00       	mov    $0x5,%eax
 78f:	cd 40                	int    $0x40
 791:	c3                   	ret    

00000792 <write>:
SYSCALL(write)
 792:	b8 10 00 00 00       	mov    $0x10,%eax
 797:	cd 40                	int    $0x40
 799:	c3                   	ret    

0000079a <close>:
SYSCALL(close)
 79a:	b8 15 00 00 00       	mov    $0x15,%eax
 79f:	cd 40                	int    $0x40
 7a1:	c3                   	ret    

000007a2 <kill>:
SYSCALL(kill)
 7a2:	b8 06 00 00 00       	mov    $0x6,%eax
 7a7:	cd 40                	int    $0x40
 7a9:	c3                   	ret    

000007aa <exec>:
SYSCALL(exec)
 7aa:	b8 07 00 00 00       	mov    $0x7,%eax
 7af:	cd 40                	int    $0x40
 7b1:	c3                   	ret    

000007b2 <open>:
SYSCALL(open)
 7b2:	b8 0f 00 00 00       	mov    $0xf,%eax
 7b7:	cd 40                	int    $0x40
 7b9:	c3                   	ret    

000007ba <mknod>:
SYSCALL(mknod)
 7ba:	b8 11 00 00 00       	mov    $0x11,%eax
 7bf:	cd 40                	int    $0x40
 7c1:	c3                   	ret    

000007c2 <unlink>:
SYSCALL(unlink)
 7c2:	b8 12 00 00 00       	mov    $0x12,%eax
 7c7:	cd 40                	int    $0x40
 7c9:	c3                   	ret    

000007ca <fstat>:
SYSCALL(fstat)
 7ca:	b8 08 00 00 00       	mov    $0x8,%eax
 7cf:	cd 40                	int    $0x40
 7d1:	c3                   	ret    

000007d2 <link>:
SYSCALL(link)
 7d2:	b8 13 00 00 00       	mov    $0x13,%eax
 7d7:	cd 40                	int    $0x40
 7d9:	c3                   	ret    

000007da <mkdir>:
SYSCALL(mkdir)
 7da:	b8 14 00 00 00       	mov    $0x14,%eax
 7df:	cd 40                	int    $0x40
 7e1:	c3                   	ret    

000007e2 <chdir>:
SYSCALL(chdir)
 7e2:	b8 09 00 00 00       	mov    $0x9,%eax
 7e7:	cd 40                	int    $0x40
 7e9:	c3                   	ret    

000007ea <dup>:
SYSCALL(dup)
 7ea:	b8 0a 00 00 00       	mov    $0xa,%eax
 7ef:	cd 40                	int    $0x40
 7f1:	c3                   	ret    

000007f2 <getpid>:
SYSCALL(getpid)
 7f2:	b8 0b 00 00 00       	mov    $0xb,%eax
 7f7:	cd 40                	int    $0x40
 7f9:	c3                   	ret    

000007fa <sbrk>:
SYSCALL(sbrk)
 7fa:	b8 0c 00 00 00       	mov    $0xc,%eax
 7ff:	cd 40                	int    $0x40
 801:	c3                   	ret    

00000802 <sleep>:
SYSCALL(sleep)
 802:	b8 0d 00 00 00       	mov    $0xd,%eax
 807:	cd 40                	int    $0x40
 809:	c3                   	ret    

0000080a <uptime>:
SYSCALL(uptime)
 80a:	b8 0e 00 00 00       	mov    $0xe,%eax
 80f:	cd 40                	int    $0x40
 811:	c3                   	ret    
 812:	66 90                	xchg   %ax,%ax
 814:	66 90                	xchg   %ax,%ax
 816:	66 90                	xchg   %ax,%ax
 818:	66 90                	xchg   %ax,%ax
 81a:	66 90                	xchg   %ax,%ax
 81c:	66 90                	xchg   %ax,%ax
 81e:	66 90                	xchg   %ax,%ax

00000820 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 820:	55                   	push   %ebp
 821:	89 e5                	mov    %esp,%ebp
 823:	57                   	push   %edi
 824:	56                   	push   %esi
 825:	53                   	push   %ebx
 826:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 829:	85 d2                	test   %edx,%edx
{
 82b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 82e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 830:	79 76                	jns    8a8 <printint+0x88>
 832:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 836:	74 70                	je     8a8 <printint+0x88>
    x = -xx;
 838:	f7 d8                	neg    %eax
    neg = 1;
 83a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 841:	31 f6                	xor    %esi,%esi
 843:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 846:	eb 0a                	jmp    852 <printint+0x32>
 848:	90                   	nop
 849:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 850:	89 fe                	mov    %edi,%esi
 852:	31 d2                	xor    %edx,%edx
 854:	8d 7e 01             	lea    0x1(%esi),%edi
 857:	f7 f1                	div    %ecx
 859:	0f b6 92 80 0c 00 00 	movzbl 0xc80(%edx),%edx
  }while((x /= base) != 0);
 860:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 862:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 865:	75 e9                	jne    850 <printint+0x30>
  if(neg)
 867:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 86a:	85 c0                	test   %eax,%eax
 86c:	74 08                	je     876 <printint+0x56>
    buf[i++] = '-';
 86e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 873:	8d 7e 02             	lea    0x2(%esi),%edi
 876:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 87a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 87d:	8d 76 00             	lea    0x0(%esi),%esi
 880:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 883:	83 ec 04             	sub    $0x4,%esp
 886:	83 ee 01             	sub    $0x1,%esi
 889:	6a 01                	push   $0x1
 88b:	53                   	push   %ebx
 88c:	57                   	push   %edi
 88d:	88 45 d7             	mov    %al,-0x29(%ebp)
 890:	e8 fd fe ff ff       	call   792 <write>

  while(--i >= 0)
 895:	83 c4 10             	add    $0x10,%esp
 898:	39 de                	cmp    %ebx,%esi
 89a:	75 e4                	jne    880 <printint+0x60>
    putc(fd, buf[i]);
}
 89c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 89f:	5b                   	pop    %ebx
 8a0:	5e                   	pop    %esi
 8a1:	5f                   	pop    %edi
 8a2:	5d                   	pop    %ebp
 8a3:	c3                   	ret    
 8a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 8a8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 8af:	eb 90                	jmp    841 <printint+0x21>
 8b1:	eb 0d                	jmp    8c0 <printf>
 8b3:	90                   	nop
 8b4:	90                   	nop
 8b5:	90                   	nop
 8b6:	90                   	nop
 8b7:	90                   	nop
 8b8:	90                   	nop
 8b9:	90                   	nop
 8ba:	90                   	nop
 8bb:	90                   	nop
 8bc:	90                   	nop
 8bd:	90                   	nop
 8be:	90                   	nop
 8bf:	90                   	nop

000008c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 8c0:	55                   	push   %ebp
 8c1:	89 e5                	mov    %esp,%ebp
 8c3:	57                   	push   %edi
 8c4:	56                   	push   %esi
 8c5:	53                   	push   %ebx
 8c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8c9:	8b 75 0c             	mov    0xc(%ebp),%esi
 8cc:	0f b6 1e             	movzbl (%esi),%ebx
 8cf:	84 db                	test   %bl,%bl
 8d1:	0f 84 b3 00 00 00    	je     98a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 8d7:	8d 45 10             	lea    0x10(%ebp),%eax
 8da:	83 c6 01             	add    $0x1,%esi
  state = 0;
 8dd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 8df:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8e2:	eb 2f                	jmp    913 <printf+0x53>
 8e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 8e8:	83 f8 25             	cmp    $0x25,%eax
 8eb:	0f 84 a7 00 00 00    	je     998 <printf+0xd8>
  write(fd, &c, 1);
 8f1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 8f4:	83 ec 04             	sub    $0x4,%esp
 8f7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 8fa:	6a 01                	push   $0x1
 8fc:	50                   	push   %eax
 8fd:	ff 75 08             	pushl  0x8(%ebp)
 900:	e8 8d fe ff ff       	call   792 <write>
 905:	83 c4 10             	add    $0x10,%esp
 908:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 90b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 90f:	84 db                	test   %bl,%bl
 911:	74 77                	je     98a <printf+0xca>
    if(state == 0){
 913:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 915:	0f be cb             	movsbl %bl,%ecx
 918:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 91b:	74 cb                	je     8e8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 91d:	83 ff 25             	cmp    $0x25,%edi
 920:	75 e6                	jne    908 <printf+0x48>
      if(c == 'd'){
 922:	83 f8 64             	cmp    $0x64,%eax
 925:	0f 84 05 01 00 00    	je     a30 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 92b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 931:	83 f9 70             	cmp    $0x70,%ecx
 934:	74 72                	je     9a8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 936:	83 f8 73             	cmp    $0x73,%eax
 939:	0f 84 99 00 00 00    	je     9d8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 93f:	83 f8 63             	cmp    $0x63,%eax
 942:	0f 84 08 01 00 00    	je     a50 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 948:	83 f8 25             	cmp    $0x25,%eax
 94b:	0f 84 ef 00 00 00    	je     a40 <printf+0x180>
  write(fd, &c, 1);
 951:	8d 45 e7             	lea    -0x19(%ebp),%eax
 954:	83 ec 04             	sub    $0x4,%esp
 957:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 95b:	6a 01                	push   $0x1
 95d:	50                   	push   %eax
 95e:	ff 75 08             	pushl  0x8(%ebp)
 961:	e8 2c fe ff ff       	call   792 <write>
 966:	83 c4 0c             	add    $0xc,%esp
 969:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 96c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 96f:	6a 01                	push   $0x1
 971:	50                   	push   %eax
 972:	ff 75 08             	pushl  0x8(%ebp)
 975:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 978:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 97a:	e8 13 fe ff ff       	call   792 <write>
  for(i = 0; fmt[i]; i++){
 97f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 983:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 986:	84 db                	test   %bl,%bl
 988:	75 89                	jne    913 <printf+0x53>
    }
  }
}
 98a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 98d:	5b                   	pop    %ebx
 98e:	5e                   	pop    %esi
 98f:	5f                   	pop    %edi
 990:	5d                   	pop    %ebp
 991:	c3                   	ret    
 992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 998:	bf 25 00 00 00       	mov    $0x25,%edi
 99d:	e9 66 ff ff ff       	jmp    908 <printf+0x48>
 9a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 9a8:	83 ec 0c             	sub    $0xc,%esp
 9ab:	b9 10 00 00 00       	mov    $0x10,%ecx
 9b0:	6a 00                	push   $0x0
 9b2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 9b5:	8b 45 08             	mov    0x8(%ebp),%eax
 9b8:	8b 17                	mov    (%edi),%edx
 9ba:	e8 61 fe ff ff       	call   820 <printint>
        ap++;
 9bf:	89 f8                	mov    %edi,%eax
 9c1:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9c4:	31 ff                	xor    %edi,%edi
        ap++;
 9c6:	83 c0 04             	add    $0x4,%eax
 9c9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 9cc:	e9 37 ff ff ff       	jmp    908 <printf+0x48>
 9d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 9d8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 9db:	8b 08                	mov    (%eax),%ecx
        ap++;
 9dd:	83 c0 04             	add    $0x4,%eax
 9e0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 9e3:	85 c9                	test   %ecx,%ecx
 9e5:	0f 84 8e 00 00 00    	je     a79 <printf+0x1b9>
        while(*s != 0){
 9eb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 9ee:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 9f0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 9f2:	84 c0                	test   %al,%al
 9f4:	0f 84 0e ff ff ff    	je     908 <printf+0x48>
 9fa:	89 75 d0             	mov    %esi,-0x30(%ebp)
 9fd:	89 de                	mov    %ebx,%esi
 9ff:	8b 5d 08             	mov    0x8(%ebp),%ebx
 a02:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 a05:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 a08:	83 ec 04             	sub    $0x4,%esp
          s++;
 a0b:	83 c6 01             	add    $0x1,%esi
 a0e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 a11:	6a 01                	push   $0x1
 a13:	57                   	push   %edi
 a14:	53                   	push   %ebx
 a15:	e8 78 fd ff ff       	call   792 <write>
        while(*s != 0){
 a1a:	0f b6 06             	movzbl (%esi),%eax
 a1d:	83 c4 10             	add    $0x10,%esp
 a20:	84 c0                	test   %al,%al
 a22:	75 e4                	jne    a08 <printf+0x148>
 a24:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 a27:	31 ff                	xor    %edi,%edi
 a29:	e9 da fe ff ff       	jmp    908 <printf+0x48>
 a2e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 a30:	83 ec 0c             	sub    $0xc,%esp
 a33:	b9 0a 00 00 00       	mov    $0xa,%ecx
 a38:	6a 01                	push   $0x1
 a3a:	e9 73 ff ff ff       	jmp    9b2 <printf+0xf2>
 a3f:	90                   	nop
  write(fd, &c, 1);
 a40:	83 ec 04             	sub    $0x4,%esp
 a43:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 a46:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 a49:	6a 01                	push   $0x1
 a4b:	e9 21 ff ff ff       	jmp    971 <printf+0xb1>
        putc(fd, *ap);
 a50:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 a53:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 a56:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 a58:	6a 01                	push   $0x1
        ap++;
 a5a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 a5d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 a60:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 a63:	50                   	push   %eax
 a64:	ff 75 08             	pushl  0x8(%ebp)
 a67:	e8 26 fd ff ff       	call   792 <write>
        ap++;
 a6c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 a6f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a72:	31 ff                	xor    %edi,%edi
 a74:	e9 8f fe ff ff       	jmp    908 <printf+0x48>
          s = "(null)";
 a79:	bb 76 0c 00 00       	mov    $0xc76,%ebx
        while(*s != 0){
 a7e:	b8 28 00 00 00       	mov    $0x28,%eax
 a83:	e9 72 ff ff ff       	jmp    9fa <printf+0x13a>
 a88:	66 90                	xchg   %ax,%ax
 a8a:	66 90                	xchg   %ax,%ax
 a8c:	66 90                	xchg   %ax,%ax
 a8e:	66 90                	xchg   %ax,%ax

00000a90 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a90:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a91:	a1 04 10 00 00       	mov    0x1004,%eax
{
 a96:	89 e5                	mov    %esp,%ebp
 a98:	57                   	push   %edi
 a99:	56                   	push   %esi
 a9a:	53                   	push   %ebx
 a9b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a9e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 aa1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 aa8:	39 c8                	cmp    %ecx,%eax
 aaa:	8b 10                	mov    (%eax),%edx
 aac:	73 32                	jae    ae0 <free+0x50>
 aae:	39 d1                	cmp    %edx,%ecx
 ab0:	72 04                	jb     ab6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ab2:	39 d0                	cmp    %edx,%eax
 ab4:	72 32                	jb     ae8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 ab6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 ab9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 abc:	39 fa                	cmp    %edi,%edx
 abe:	74 30                	je     af0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 ac0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 ac3:	8b 50 04             	mov    0x4(%eax),%edx
 ac6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 ac9:	39 f1                	cmp    %esi,%ecx
 acb:	74 3a                	je     b07 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 acd:	89 08                	mov    %ecx,(%eax)
  freep = p;
 acf:	a3 04 10 00 00       	mov    %eax,0x1004
}
 ad4:	5b                   	pop    %ebx
 ad5:	5e                   	pop    %esi
 ad6:	5f                   	pop    %edi
 ad7:	5d                   	pop    %ebp
 ad8:	c3                   	ret    
 ad9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ae0:	39 d0                	cmp    %edx,%eax
 ae2:	72 04                	jb     ae8 <free+0x58>
 ae4:	39 d1                	cmp    %edx,%ecx
 ae6:	72 ce                	jb     ab6 <free+0x26>
{
 ae8:	89 d0                	mov    %edx,%eax
 aea:	eb bc                	jmp    aa8 <free+0x18>
 aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 af0:	03 72 04             	add    0x4(%edx),%esi
 af3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 af6:	8b 10                	mov    (%eax),%edx
 af8:	8b 12                	mov    (%edx),%edx
 afa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 afd:	8b 50 04             	mov    0x4(%eax),%edx
 b00:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 b03:	39 f1                	cmp    %esi,%ecx
 b05:	75 c6                	jne    acd <free+0x3d>
    p->s.size += bp->s.size;
 b07:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 b0a:	a3 04 10 00 00       	mov    %eax,0x1004
    p->s.size += bp->s.size;
 b0f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 b12:	8b 53 f8             	mov    -0x8(%ebx),%edx
 b15:	89 10                	mov    %edx,(%eax)
}
 b17:	5b                   	pop    %ebx
 b18:	5e                   	pop    %esi
 b19:	5f                   	pop    %edi
 b1a:	5d                   	pop    %ebp
 b1b:	c3                   	ret    
 b1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000b20 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b20:	55                   	push   %ebp
 b21:	89 e5                	mov    %esp,%ebp
 b23:	57                   	push   %edi
 b24:	56                   	push   %esi
 b25:	53                   	push   %ebx
 b26:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b29:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b2c:	8b 15 04 10 00 00    	mov    0x1004,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b32:	8d 78 07             	lea    0x7(%eax),%edi
 b35:	c1 ef 03             	shr    $0x3,%edi
 b38:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 b3b:	85 d2                	test   %edx,%edx
 b3d:	0f 84 9d 00 00 00    	je     be0 <malloc+0xc0>
 b43:	8b 02                	mov    (%edx),%eax
 b45:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 b48:	39 cf                	cmp    %ecx,%edi
 b4a:	76 6c                	jbe    bb8 <malloc+0x98>
 b4c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 b52:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b57:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 b5a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 b61:	eb 0e                	jmp    b71 <malloc+0x51>
 b63:	90                   	nop
 b64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b68:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b6a:	8b 48 04             	mov    0x4(%eax),%ecx
 b6d:	39 f9                	cmp    %edi,%ecx
 b6f:	73 47                	jae    bb8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b71:	39 05 04 10 00 00    	cmp    %eax,0x1004
 b77:	89 c2                	mov    %eax,%edx
 b79:	75 ed                	jne    b68 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 b7b:	83 ec 0c             	sub    $0xc,%esp
 b7e:	56                   	push   %esi
 b7f:	e8 76 fc ff ff       	call   7fa <sbrk>
  if(p == (char*)-1)
 b84:	83 c4 10             	add    $0x10,%esp
 b87:	83 f8 ff             	cmp    $0xffffffff,%eax
 b8a:	74 1c                	je     ba8 <malloc+0x88>
  hp->s.size = nu;
 b8c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b8f:	83 ec 0c             	sub    $0xc,%esp
 b92:	83 c0 08             	add    $0x8,%eax
 b95:	50                   	push   %eax
 b96:	e8 f5 fe ff ff       	call   a90 <free>
  return freep;
 b9b:	8b 15 04 10 00 00    	mov    0x1004,%edx
      if((p = morecore(nunits)) == 0)
 ba1:	83 c4 10             	add    $0x10,%esp
 ba4:	85 d2                	test   %edx,%edx
 ba6:	75 c0                	jne    b68 <malloc+0x48>
        return 0;
  }
}
 ba8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 bab:	31 c0                	xor    %eax,%eax
}
 bad:	5b                   	pop    %ebx
 bae:	5e                   	pop    %esi
 baf:	5f                   	pop    %edi
 bb0:	5d                   	pop    %ebp
 bb1:	c3                   	ret    
 bb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 bb8:	39 cf                	cmp    %ecx,%edi
 bba:	74 54                	je     c10 <malloc+0xf0>
        p->s.size -= nunits;
 bbc:	29 f9                	sub    %edi,%ecx
 bbe:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 bc1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 bc4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 bc7:	89 15 04 10 00 00    	mov    %edx,0x1004
}
 bcd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 bd0:	83 c0 08             	add    $0x8,%eax
}
 bd3:	5b                   	pop    %ebx
 bd4:	5e                   	pop    %esi
 bd5:	5f                   	pop    %edi
 bd6:	5d                   	pop    %ebp
 bd7:	c3                   	ret    
 bd8:	90                   	nop
 bd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 be0:	c7 05 04 10 00 00 08 	movl   $0x1008,0x1004
 be7:	10 00 00 
 bea:	c7 05 08 10 00 00 08 	movl   $0x1008,0x1008
 bf1:	10 00 00 
    base.s.size = 0;
 bf4:	b8 08 10 00 00       	mov    $0x1008,%eax
 bf9:	c7 05 0c 10 00 00 00 	movl   $0x0,0x100c
 c00:	00 00 00 
 c03:	e9 44 ff ff ff       	jmp    b4c <malloc+0x2c>
 c08:	90                   	nop
 c09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 c10:	8b 08                	mov    (%eax),%ecx
 c12:	89 0a                	mov    %ecx,(%edx)
 c14:	eb b1                	jmp    bc7 <malloc+0xa7>
