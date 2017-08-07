# Giverny 安装

**注意：**本教程适用于Mac开发环境，其它环境或者安装中遇到本文档没有提到的地方，请完善该文档

项目依赖：

- Python3	（开发环境）
- PostgreSQL	（数据库）
- postgis（PostgreSQL数据库的位置支持）
- MySQL	（用户相关和旧版数据库，因为MySQL无法提供位置支持，之后会逐渐废弃）
- Redis	（NoSQL数据库）

## 开始之前

1. 正确安装 Xcode command line tool
2. 已安装[Homebrew](http://brew.sh/)

## 开始

### 安装必要的软件和依赖

```shell
brew install python3 

brew install mysql
# 启动mysql 
brew services start mysql 
	
brew install redis 
# 启动redis
brew services start redis		

brew install postgresql 
brew install postgis 
brew install libgeoip
# 启动postgis
brew services start postgis	
```

### 运行项目

```shell
# clone代码并切换到develop分支
git clone git@github.com:beastbikes/giverny.git
git fetch
git checkout -b develop origin/develop

# 安装依赖
cd giverny
sudo pip install virtualenv
virtualenv .env -p python3
source .env/bin/activate
pip install -r requirements.txt
```



