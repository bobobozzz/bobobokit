# Pratical Vim

Edit Text at the Speed of Thought.

    :so $MYVIMRC
    :e ++enc=gbk
    :%!xxd

    % 当前完整的文件名
    %:h 文件名的头部，即文件目录.例如../path/test.c就会为../path
    %:t 文件名的尾部.例如../path/test.c就会为test.c
    %:r 无扩展名的文件名.例如../path/test就会成为test
    %:e 扩展名


    /<search string>\c
    :%s/\(world\), change \(mind\)/\2, change \1/g
    :%s/_\([a-z]\)/\U\1/g
    let i=997|g/abcdefg/s//\=i/|let i=i-1

## ctrl+v：矩形选择

## command
    .(范式)
    ; , n N
    & @:
    I
    C
    s
    S
    gj go g^ ...
    W
    ea
    gea
    t{char} T{char}
    d/{str}
    vi} va}


## vimdiff:

```
       ]c   跳到下一个不同处
       [c   跳到上一个不同处
       dp   put
       do   get
       zo   打开折叠(l也可以打开折叠）
       zc   关闭当前折叠
       zm   关闭所有折叠
       zr   打开所有折叠
```

## cscope:

:cs find {querytype} {name}

     {querytype} 即相对应于实际的cscope行接口数字，同时也相对应于nvi命令：
        0或者s   —— 查找这个C符号
        1或者g  —— 查找这个定义
        2或者d  —— 查找被这个函数调用的函数（们）
        3或者c  —— 查找调用这个函数的函数（们）
        4或者t   —— 查找这个字符串
        6或者e  —— 查找这个egrep匹配模式
        7或者f   —— 查找这个文件
        8或者i   —— 查找#include这个文件的文件（们）
