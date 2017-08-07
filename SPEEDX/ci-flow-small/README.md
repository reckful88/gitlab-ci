# SpeedX 电商项目

主要分3大模块

- 商品
- 订单
- 支付

各模块之间保持独立

- 订单仅在创建订单时向商品取得订单信息，订单不依赖支付
- 支付订单通过商品订单创建，支付订单不依赖商品
- 商品不依赖其它两个模块

## How to start this project

### Docker

```
cp .env.exmaple .env
docker-compose run small python manage.py migrate
# 初始化国家
docker-compose run small python manage.py init_country
docker-compose up
```

### Mac

1. First you should install python3.6

```
brew install postgresql postgis
createuser --interactive
sudo pip install virtualenv
virtualenv .venv -p python3.6
source .venv/bin/activate
cp .env.exmaple .env
export $(grep "^[^#;]" .env)
pip install -r requirements.txt
./manage.py migrate
./manage.py init_country
./manage.py runserver
```

## Run test

```
python manage.py test
```

## Notice

- 该项目是基于`python3.6`版本进行开发的，大胆使用[新特性](https://docs.python.org/3/whatsnew/3.6.html)
- 所有涉及到货币的单位都要用**分**
- 后台的SMall项目基于develop分支，按任务开分支。除`master`和`develop`外不要长期持有一个分支

## 部署

### 线上部署

必须环境变量
```
DJANGO_SETTINGS_MODULE=SMall.settings_production
```

服务启动命令

```
python manage.py migrate && python manage.py collectstatic --noinput && gunicorn -w4 -b 0.0.0.0:8501 SMall.wsgi
```

Nginx配置

挂载的`volume`代码目录中的`/static`目录为静态文件目录，需要挂载到nginx中，例如：

```
location /static/ {
    root /{MOUNT_PATH}/SMall/;
}
```

## Docker Dev Branch

- 伯函：zbh_
- 金明：hjm_
- 张立：zl_ 

**触发规则：**

自己名字开头的远程分支上有改变时，将会触发Docker的构建，就是说只要将自己分支上的
代码push到gitlab上去之后，远程即可开始自动构建+部署的操作。时间大约为40秒 ~ 2分
钟不等。

**访问方式：**

类似虚拟主机，各自的开发测试环境。
- fedev.speedx.com:8501  【master分支】
- fedev.speedx.com:8502  【develop】
- fedev.speedx.com:8503  【伯函】
- fedev.speedx.com:8504  【金明】
- fedev.speedx.com:8505  【张立】

## docker常用命令
docker-compose run db psql -U postgres -h db

# 本地开发进入数据库
docker ps  # 找到那个数据库容器的id
docker exec -it {id} psql -U postgres postgres
