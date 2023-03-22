# fs_dev_docker

* build

```bash
docker build --platform linux/x86_64 -t karlma/fs_dev-ubuntu:22.04 .
```

* Run and ssh login

```bash
docker run -d -it -v /Users/karl/workspace/newfs/freeswitch:/usr/local/src/freeswitch -v /Users/karl/workspace/newfs/fs_build-ubuntu-22.04:/usr/local/freeswitch -P karlma/fs_dev /usr/sbin/sshd -D
```

* 查看sshd端口映射

```bash
docker port <containerid>
ssh -p<port> root@localhost
```

* 清理源码目录

```bash
git clean -fdx
```

* 编译fs

> 编译时出现openssl 3.0兼容问题，pull request还未合并：https://github.com/signalwire/freeswitch/issues/1762

```bash
./bootstrap.sh && ./configure --enable-core-odbc-support && make all
```

