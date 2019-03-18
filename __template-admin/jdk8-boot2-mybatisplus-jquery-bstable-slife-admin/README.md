# README

- 修改数据库地址
- 修改redis配置 : redis默认密码为空
- http://localhost:8081/swagger-ui.html
- Error creating bean with name 'enableRedisKeyspaceNotificationsInitializer'
    - https://www.cnblogs.com/gudi/p/7823557.html
    
```shell
redis-cli.exe -h 127.0.0.1 -p 6379
config set notify-keyspace-events Egx
exit 

然后重启
```    