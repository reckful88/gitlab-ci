# Lehavre
SpeedX商户后台项目

## 项目规范

- 模型字段、变量都使用蛇型样式的字段, 返回到接口时不做转化

## TODO

- 发送验证码
- 上传图片前取得token接口


## Docker 环境运行

```
docker-compose up -d    # 启动环境
docker-compose run postgres psql -h postgres -U postgres postgres -c "CREATE DATABASE beast";   # 创建数据库
docker-compose run web0 python manage.py migrate --database bikeshop_db     # 数据库迁移
docker-compose run -d -p 8000:8000 web0 bash -c "python manage.py runserver 0.0.0.0:8000"   # 运行项目
```





