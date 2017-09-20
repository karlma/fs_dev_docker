# fs_dev_docker

* Run and ssh login

```
docker run -d -it -v /Users/karl/workspace/freeswitch:/usr/local/src/freeswitch -v /Users/karl/workspace/fs_build:/usr/local/freeswitch -P karlma/fs_dev /usr/sbin/sshd -D
```

* 查看sshd端口映射

```
docker port <containerid>
ssh -p<port> root@localhost
```

* 清理源码目录

```
git clean -fdx
```

* 编译fs

```
./bootstrap.sh && ./configure --enable-core-odbc-support && make all
```

