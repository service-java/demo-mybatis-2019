# README 

- 注意一下自己有没有E盘

- mongodb项目
    - 创建test数据库
    - 运行test
    
```js
// 创建用户
db.createUser(
   {
     user: "xiongneng",
     pwd: "123456",
     roles: [ { role: "readWrite", db: "test" } ]
   }
 )
```

- socket项目
    - boot仅提供服务
    - 静态页随便打开就行

- echarts项目

    - 打开页面以后需要运行test添加数据 
    - application.yml 里有图片保存路径 看下是否符合   