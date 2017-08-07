# -*- coding:utf-8 -*-
import os
from fabric.api import local, cd, run, roles, execute, put
from fabric.context_managers import env

os.chdir('../')

env.roledefs = {'web': ['web@112.126.77.252', ],
                'pro': ['web@121.43.193.63', 'web@120.55.117.198', 'web@120.26.87.166'],
                'sendbox': ['web@121.43.193.63', ],
                'celery': ['web@121.43.193.63', 'web@120.26.87.166']}


def deploy(dev_env='giverny'):
    if dev_env not in ['giverny', 'dev1', 'dev2', 'dev3', 'dev4']:
        print('error dev env!!!<{}>'.format(dev_env))
        return
    print('-------start--deploy-------')
    local('cd ./giverny')
    local('cd ./giverny && git log -1 --pretty=fuller > ./static/revision.txt')
    local('find ./ -name "*.pyc" -delete')
    local('find ./ -name "__pycache__" | xargs rm -rf')
    local('cd ..')
    local('find ./ -name "giverny.tar.gz" | xargs rm')
    local('tar zcf giverny.tar.gz --exclude ./giverny/logs --exclude \
./giverny/docs --exclude ./giverny/.git --exclude ./giverny/*env ./giverny')
    execute(unpack_reload, dev_env)


def publish():
    print('-------start--deploy-------')
    local('cd ./giverny')
    local('cd ./giverny && git log -1 --pretty=fuller > ./static/revision.txt')
    local('find ./ -name "*.pyc" -delete')
    local('find ./ -name "__pycache__" | xargs rm -rf')
    local('cd ..')
    local('find ./ -name "giverny.tar.gz" | xargs rm')
    local('tar zcf giverny.tar.gz --exclude ./giverny/logs --exclude \
./giverny/docs --exclude ./giverny/.git --exclude ./giverny/*env ./giverny')
    execute(unpack_reload_production)
    execute(reload_celery)


def sendbox():
    local('cd ./giverny')
    local('find ./ -name "*.pyc" -delete')
    local('find ./ -name "__pycache__" | xargs rm -rf')
    local('cd ..')
    local('find ./ -name "giverny.tar.gz" | xargs rm')
    local('tar zcf giverny.tar.gz --exclude ./giverny/logs --exclude \
          ./giverny/docs --exclude ./giverny/.git --exclude ./giverny/*env ./giverny')
    execute(unpack_sendbox)


@roles('web')
def unpack_reload(dev_env='giverny'):
    run('whoami')
    with cd('/home/web/webservice/'):
        run('ls -lh | grep giverny')
        put('./giverny.tar.gz',
            'giverny.tar.gz')
        run('ls -lh | grep giverny')
        if dev_env == 'giverny':
            run('tar zxf giverny.tar.gz')
        else:
            run('tar zxf giverny.tar.gz -C {}'.format(dev_env))
        run('find ./giverny -name "*.pyc" -delete')
        if dev_env == 'giverny':
            run('/home/web/env/giverny_env/bin/python giverny/manage.py check')
            run('sudo service giverny restart')
        else:
            run('/home/web/env/giverny_env/bin/python {}/giverny/manage.py check'.format(dev_env))
            run('sudo service {} restart'.format(dev_env))
        need_reload_celery = raw_input('reload celery task?[Y/n]: ')
        if need_reload_celery and need_reload_celery.lower() in ['y', 'yes']:
            need_reload_celery = 'yes'
            run('supervisorctl -c /home/web/webservice/confs/supervisord/worker.conf restart all')
        else:
            need_reload_celery = 'no'
    print('done with celery reload:', need_reload_celery)


@roles('pro')
def unpack_reload_production():
    run('whoami')
    with cd('/home/web/webservice/'):
        run('ls -lh | grep giverny')
        put('./giverny.tar.gz',
            'giverny.tar.gz')
        run('ls -lh | grep giverny')
        run('tar zxf giverny.tar.gz')
        run('find ./ -name "*.pyc" -delete')
        run('/home/web/env/giverny_env/bin/python giverny/manage.py check --settings giverny.settings_pro')
        run('sudo service giverny restart')
    print('done')


@roles('sendbox')
def unpack_sendbox():
    run('whoami')
    with cd('/home/web/sendbox/'):
        run('ls -lh | grep giverny')
        put('./giverny.tar.gz',
            'giverny.tar.gz')
        run('ls -lh | grep giverny')
        run('tar zxf giverny.tar.gz')
        run('find ./ -name "*.pyc" -delete')
        run('/home/web/env/giverny_env/bin/python giverny/manage.py check --settings giverny.settings_pro')
    print('done')


@roles('celery')
def reload_celery():
    run('supervisorctl -c \
        /home/web/webservice/confs/supervisord/worker.conf restart all')
    print('celery restart done')


def test(env='default'):
    execute(test_exe, env)


def test_exe(env='default1'):
    print(env)


@roles(['web', 'pro'])
def upload_authorized_keys():
    with cd('/home/web/.ssh/'):
        put('giverny/configs/ssh/authorized_keys', 'authorized_keys2')
