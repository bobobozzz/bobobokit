# Linux Command Memo

## Linux

    ssh -i xxx_rsa user@host
    scp [可选参数] file_source file_target
    uptime

    date +%s

    printf "%x\n"  3046 
    iconv -s -c -f UTF8 -t GBK src.csv > dec.csv

    df -h
    du -h -d 1 /
    jobs -l
    fg %<number>
    bg %<number>

    firewall-cmd --add-port=20070/tcp --permanent
    firewall-cmd --reload
    firewall-cmd --zone=public --add-port=80/tcp --permanent
    firewall-cmd --query-port=6379/tcp

    tcpdump -X -i lo0 'port 8000'

    curl -d 'jsondata={"uid":"324","valid_flag":1}' "http://api.customer.liangcheng.idc/memberlq/api/customer/updateVipUserStatus.aj" -X POST

## Docker

    docker export <CONTAINER ID> > my_container.tar
    cat my_container.tar |docker import - image_name:tag

    docker run -v <host dir>:<container dir> -p <container port>:<host port> -it centos:centos6 /bin/bash
    docker run --name gdb --security-opt seccomp=unconfined -v /Users/James/code:/data -it centos:centos6 /bin/bash
    docker run --privileged -ti --name test  docker.io/centos:7  /usr/sbin/init
    docker run --rm -it redis_master:1.0 bash

    docker@xhyve:~$ sudo mkdir /sys/fs/cgroup/systemd
    docker@xhyve:~$ sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd

    docker save -o dockerimg_base_server.tar base_server
    docker load -i quay.io-calico-node-1.tar

    docker images -f "dangling=true"
    docker build -f Redis.Dockerfile -t cluster_redis:1.0 .

    docker volume ls -qf dangling=true | xargs docker volume rm

    docker-machine scp host1:/tmp/a host2:/tmp/b
    docker cp 容器名：要拷贝的文件在容器里面的路径  要拷贝到宿主机的相应路径

    docker-compose -f docker-compose-base.yml -f docker-compose-dev.yml config

## Maven

    mvn package -DskipTests

    mvn archetype:generate -DgroupId=<name> -DartifactId=<name> -DinteractiveMode=false

    mvn test -Dtest=MyClassTest#*test*

    mvn spring-boot:run

    mvn dependency:tree

    mvn exec:java -Dexec.mainClass="com.vineetmanohar.module.Main"

## MySQL

    create user 'testuser'@'127.0.0.1' identified by '123456';
    grant all privileges on db_test.* to 'testuser'@'127.0.0.1';
    flush privileges;

    source  file.sql

    mysqldump -h192.168.32.88 -uliangcheng -p0324LiangCheng2017 -d --all-databases > bainianaolai.sql

    show processlist;
    show variables like 'character_%';
    set @@character_set_connection=utf8;

    pager cat > file

    sudo /usr/local/mysql/support-files/mysql.server start

## Python

    python setup.py sdist build
    twine upload dist/*

## Spring

    spring init -dweb,data-jpa,h2,thymeleaf --build maven demo

## Mac

    sudo spctl --master-disable

## Item2

    输入打头几个字母，然后输入command+; iterm2将自动列出之前输入过的类似命令。

    输入command+shift+h，iterm2将自动列出剪切板的历史记录。

## zsh

    alias cmdname=""
    alias -s gz="tar -xzvf"

    d .. ...
    cd -
    z (-l str)
    cd /U/b/c

    ls -l **/*.sh
    kill emacs <tab>

## Tmux

    tmux new -s <session-name>
    tmux detach
    tmux attach/kill-session/switch -t <session-name>
    tmux split-window (-h)
    tmux select-pane (-U/D/L/R)

    tmux list-keys
    tmux list-commands
    tmux info
    tmux ls 
    tmux source-file ~/.tmux.conf

## SSL

    # 生成私钥
    openssl genrsa -out ${target}.key 1024
    # 生成公钥
    openssl rsa -in ${target}.key -pubout -out ${target}.pem

    # 生成 CA 私钥
    openssl genrsa -out ca.key 1024
    # X.509 Certificate Signing Request (CSR) Management.
    openssl req -new -key ca.key -out ca.csr
    # X.509 Certificate Data Management.
    openssl x509 -req -in ca.csr -signkey ca.key -out ca.crt

    # 服务器端需要向 CA 机构申请签名证书，在申请签名证书之前依然是创建自己的 CSR 文件
    openssl req -new -key ${target}.key -out ${target}.csr
    # 向自己的 CA 机构申请证书，签名过程需要 CA 的证书和私钥参与，最终颁发一个带有 CA 签名的证书
    openssl x509 -req -CA ca.crt -CAkey ca.key -CAcreateserial -in ${target}.csr -out ${target}.crt

## ctag

    ctags --totals=yes -f /Users/James/code/tags/kit.tags -R /Users/James/code/kit/py/ --exclude=+.pyc,+.swp,+.md,LISENCE
    find . -name "*.go" | xargs gotags -L - -f tags
    find . -name "*.java" | xargs ctags -L -

## SVN

    svn diff $url_merge_from $url_merge_to | grep @@
    svn diff $url_merge_from $url_merge_to 
    svn diff -r $end_version:$start_version 
    svn log --stop-on-copy $url_merge_from 
    svn diff --old=$url_merge_from@${start_version} --new=$url_merge_from
    svn export --username abc --password 123  -r $svn_version $svn_url $project_name
