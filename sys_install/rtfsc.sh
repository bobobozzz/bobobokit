#!/bin/sh

dir_rtfsc=~/code/rtfsc

gitclone(){
    if [ -d $2 ]; then
        echo $2 exists.
    else
        git clone $1 $2
    fi
}

gitclone https://github.com/loveveryday/linux0.11.git $dir_rtfsc/linux0.11
gitclone https://github.com/vim/vim.git $dir_rtfsc/vim

gitclone https://github.com/nginx/nginx.git $dir_rtfsc/nginx
gitclone https://github.com/arut/nginx-python-module.git $dir_rtfsc/nginx-python-module
gitclone https://github.com/openresty/test-nginx.git $dir_rtfsc/test-nginx
gitclone https://github.com/rryqszq4/ngx_python.git $dir_rtfsc/ngx_python
gitclone https://github.com/openresty/openresty.git $dir_rtfsc/openresty
gitclone https://github.com/openresty/lua-nginx-module.git $dir_rtfsc/lua-nginx-module
gitclone https://github.com/orlabs/orange.git $dir_rtfsc/orange

gitclone https://github.com/redis/redis.git $dir_rtfsc/redis

gitclone https://github.com/kachayev/fn.py.git $dir_rtfsc/fn
gitclone https://github.com/tornadoweb/tornado.git $dir_rtfsc/tornado
gitclone https://github.com/pallets/flask.git $dir_rtfsc/flask
gitclone https://github.com/cyberdelia/flask-mysql.git $dir_rtfsc/flask-mysql
gitclone https://github.com/bottlepy/bottle.git $dir_rtfsc/bottle
gitclone https://github.com/mahmoud/clastic.git $dir_rtfsc/clastic
gitclone https://github.com/andymccurdy/redis-py.git $dir_rtfsc/redis-py
gitclone https://github.com/WebwareForPython/DBUtils.git $dir_rtfsc/DBUtils
gitclone https://github.com/PyMySQL/PyMySQL.git $dir_rtfsc/PyMySQL
gitclone https://github.com/kennethreitz/requests.git $dir_rtfsc/requests
gitclone https://github.com/scrapy/scrapy.git $dir_rtfsc/scrapy
gitclone https://github.com/ageitgey/face_recognition.git $dir_rtfsc/face_recognition

gitclone https://github.com/madrobby/zepto.git $dir_rtfsc/zepto

gitclone https://github.com/ethereum/go-ethereum.git $dir_rtfsc/go-ethereum
gitclone https://github.com/ethereum/py-evm.git $dir_rtfsc/py-evm

gitclone https://github.com/openjdk/jdk.git $dir_rtfsc/openjdk
gitclone https://github.com/spring-projects/spring-boot.git $dir_rtfsc/spring-boot
gitclone https://github.com/reactor/reactor-core.git $dir_rtfsc/reactor-core
gitclone https://github.com/netty/netty.git $dir_rtfsc/netty
gitclone https://github.com/spring-projects/spring-framework.git $dir_rtfsc/spring-framework
#gitclone https://github.com/spring-projects/spring-data-redis.git $dir_rtfsc/spring-data-redis
#gitclone https://github.com/spring-projects/spring-batch.git $dir_rtfsc/spring-batch
#gitclone https://github.com/spring-projects/spring-data-jpa.git $dir_rtfsc/spring-data-jpa
#gitclone https://github.com/spring-projects/spring-integration.git $dir_rtfsc/spring-integration
#gitclone https://github.com/apache/commons-pool.git $dir_rtfsc/commons-pool
#gitclone https://github.com/apache/commons-lang.git $dir_rtfsc/commons-lang
#gitclone https://github.com/apache/commons-io.git $dir_rtfsc/commons-io
#gitclone https://github.com/apache/commons-net.git $dir_rtfsc/commons-net
#gitclone https://github.com/Netflix/zuul.git $dir_rtfsc/zuul
#gitclone https://github.com/quartz-scheduler/quartz.git $dir_rtfsc/quartz
#gitclone https://github.com/xetorthio/jedis.git $dir_rtfsc/jedis

gitclone https://github.com/mui-org/material-ui.git $dir_rtfsc/material-ui

gitclone https://github.com/lingthio/Flask-User.git $dir_rtfsc/example/Flask-User
gitclone https://github.com/Alexmod/Flask-User-and-Flask-admin.git $dir_rtfsc/example/Flask-User-and-Flask-admin
gitclone https://github.com/webcpp/pyexample.git $dir_rtfsc/example/pyexample
gitclone https://github.com/webcpp/hi.py.git $dir_rtfsc/example/hipy
gitclone https://github.com/veltzer/demos-linux.git $dir_rtfsc/example/demos-linux
gitclone https://github.com/webcpp/hi-nginx.git $dir_rtfsc/example/hi-nginx
gitclone https://github.com/openresty/lua-resty-redis.git $dir_rtfsc/example/lua-resty-redis

gitclone https://github.com/SFantasy/WeiboReactNative.git $dir_rtfsc/example/WeiboReactNative
gitclone https://github.com/pheromone/react_native_weibo.git $dir_rtfsc/example/react_native_weibo
gitclone https://github.com/fangwei716/30-days-of-react-native.git $dir_rtfsc/example/30-days-of-react-native
gitclone https://github.com/zhengyeye/react_native_dynamic.git $dir_rtfsc/example/react_native_dynamic
gitclone https://github.com/guangqiang-liu/react-navigation-demo.git $dir_rtfsc/example/react-navigation-demo
gitclone https://github.com/computerjazz/rn-navigators.git $dir_rtfsc/example/rn-navigators
