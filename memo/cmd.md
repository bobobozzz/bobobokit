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

    diff -rq  <path> <path> > difftxt
    find . -size +100M
    find . -path './ignore' -prune -o -type f
    grep 'model name' /proc/cpuinfo | wc -l
    grep -ABC
    grep -v
    awk -F "[分隔符 分隔符]" '{print $1,"=",$2;}' filename
    sed -i "" 's/webmobileapi\.bainianaolai\.com/m\.bainianaolai\.com/g' `grep "webmobileapi.bainianaolai.com" -rl .`
    gzip -dc myfile.gz | grep abc

    curl -d 'jsondata={"uid":"324","valid_flag":1}' "http://api.customer.liangcheng.idc/memberlq/api/customer/updateVipUserStatus.aj" -X POST

    firewall-cmd --add-port=20070/tcp --permanent
    firewall-cmd --reload
    firewall-cmd --zone=public --add-port=80/tcp --permanent
    firewall-cmd --query-port=6379/tcp

    tcpdump -X -i lo0 'port 8000'

    cscope -Rbq

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

## Mac

    sudo spctl --master-disable

## Spring

    spring init -dweb,data-jpa,h2,thymeleaf --build maven demo

## Item2

    输入打头几个字母，然后输入command+; iterm2将自动列出之前输入过的类似命令。

    输入command+shift+h，iterm2将自动列出剪切板的历史记录。

## Python

    python setup.py sdist build
    twine upload dist/*
