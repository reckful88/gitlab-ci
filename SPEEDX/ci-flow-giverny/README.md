# Code Guide Line

## 代码规范
代码请严格遵循[pep8](https://www.python.org/dev/peps/pep-0008/)规范。

在根目录执行下面的命令来检查代码风格，建议每次提交PR前进行检查:

```
flake8 .
```

## Pull Request

开pull request**一定要先通过flake8代码质量检查再自审已保证代码质量**

### 分支前缀及含义

- **feature** 新增功能
- **enhance** 功能改进
- **bugfix** 修正问题
- **hotfix** Server 线上紧急修改；**该类型分支应基于master分支，并同时PR到master和develop分支**


## 与客户端调试

测试环境下，请求API后会在响应的头信息中返回`Request-UUID`字段

```shell
http --form POST https://tester.speedx.com/api/html_v2/signIn username=me@bohanzhang.com password=123456 type=1
HTTP/1.1 200 OK
...
Request-UUID: bb8b2e14-0d3b-457d-be49-79b338d2dbee
...

{
    "code": 0,
    "message": "welcome back",
    "result": {
        "needUpdate": false,
        "sessionId": "u8x3zftnrx3prt8eikkhez2gzi9r8h9l",
        "userId": "575e391e3a09802d8dc32681",
        "user_info": ...
    }
}
```

通过这个Request-UUID我们可以通过接口查看这次请求全部需要知道的信息

- 请求信息
- 请求头信息
- 响应信息
- 响应头信息

https://tester.speedx.com/http_monitor/requests/{Request-UUID}（请替换Request-UUID为需要查看的响应头中的信息）

```json
{
  "request": {
    "body": "username=me%40bohanzhang.com&password=123456&type=1",
    "status_code": "200",
    "created_at": "2016-08-16T11:15:14.961012",
    "host": "tester.speedx.com",
    "request_id": "bb8b2e14-0d3b-457d-be49-79b338d2dbee",
    "path": "/api/html_v2/signIn",
    "method": "POST"
  },
  "response": {
    "content": {
      "message": "welcome back",
      "code": 0,
      "result": {}
    },
    "status_code": "200",
    "host": "tester.speedx.com",
    "charset": "utf-8"
  },
  "response_headers": {
    "vary": "Vary, Cookie",
    "content-type": "Content-Type, application/json"
  },
  "request_headers": {
    "HTTP_ACCEPT": "*/*",
    "HTTP_USER_AGENT": "HTTPie/0.9.3",
    "HTTP_CONNECTION": "keep-alive",
    "HTTP_HOST": "tester.speedx.com",
    "HTTP_CONTENT_LENGTH": "51",
    "HTTP_CONTENT_TYPE": "application/x-www-form-urlencoded; charset=utf-8",
    "HTTP_ACCEPT_ENCODING": "gzip, deflate"
  }
}

```


## fabfile部署注意事项

### 连调环境部署

连调环境现有:
https://dev1.speedx.com
https://dev2.speedx.com
https://dev3.speedx.com
https://dev4.speedx.com

其分别对应部署命令:

```
fab deploy:dev1
fab deploy:dev2
fab deploy:dev3
fab deploy:dev4

```
### 测试环境部署

测试环境用于集成测试与bug fix, 对应 release/* 相关branch
测试环境 https://tester.speedx.com
其对应部署命令
    
```
fab deploy:giverny
[or] fab deploy
```
    
### 正式生产环境部署

正式生产环境为线上正式数据服务运行环境
正式环境 https://api.speedx.com
其对应部署命令

```
fab publish
```


## Docker init

```
docker-compose run web python manage.py makemigrations segment bikeshop push coupons bills warranty
```

### 查看线上和线下部署的版本号

线上: https://webapi.speedx.com/static/revision.txt
线下: https://tester.speedx.com/static/revision.txt



