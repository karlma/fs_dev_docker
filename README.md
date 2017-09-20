# fs_dev_docker

* Run and ssh login

```
docker run -d -it -v /Users/karl/workspace/freeswitch:/usr/local/src/freeswitch -v /Users/karl/workspace/fs_build:/usr/local/freeswitch -P karlma/fs_dev /usr/sbin/sshd -D
docker port xxxxxxxx
ssh -pxxx root@localhost
```

