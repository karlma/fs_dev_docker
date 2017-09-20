# fs_dev_docker

* Run and ssh login

```
docker run -d -it -v /Users/karl/workspace/freeswitch:/usr/local/src/freeswitch -v /Users/karl/workspace/fs_build:/usr/local/freeswitch -P -n fs_dev karlma/fs_dev /usr/sbin/sshd -D
docker port fs_dev
ssh -pxxx root@localhost
```

