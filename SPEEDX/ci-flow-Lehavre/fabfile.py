# -*- coding:utf-8 -*-
import os
from fabric.api import local, cd, run, roles, execute, put
from fabric.context_managers import env

os.chdir('../')

env.roledefs = {'web': ['web@112.126.77.252', ],
                'docker': ['bohan@101.201.208.74', ],
                'pro': ['web@121.41.34.63', ],
                }
env.passwords = {'web@112.126.77.252:22': 'qe8-br3-4mm-vLH',
                 'web@121.41.34.63:22': 'Y6CBPIrRADzy034i4ZAQMMoHyQAHrP',
                 }


def deploy():
    print('-------start--deploy-------')
    local('cd ./Lehavre')
    local('find ./ -name "*.pyc" -delete')
    local('find ./ -name "__pycache__" | xargs rm -rf')
    local('cd ..')
    local('find ./ -name "Lehavre.tar.gz" | xargs rm')
    local("tar zcf Lehavre.tar.gz --exclude ./Lehavre/logs --exclude='./Lehavre/docs' \
        --exclude='./Lehavre/.git' --exclude='./Lehavre/.env' ./Lehavre")
    execute(unpack_reload)


@roles('docker')
def docker():
    print('-------start--deploy-------')
    local('cd ./Lehavre')
    local('find ./ -name "*.pyc" -delete')
    local('find ./ -name "__pycache__" | xargs rm -rf')
    local('cd ..')
    local('find ./ -name "Lehavre.tar.gz" | xargs rm')
    local("tar zcf Lehavre.tar.gz --exclude ./Lehavre/logs --exclude='./Lehavre/docs' \
        --exclude='./Lehavre/.git' --exclude='./Lehavre/.env' ./Lehavre")
    put('./Lehavre.tar.gz', '/tmp/')


@roles('web')
def unpack_reload():
    _unpack_reload()


@roles('pro')
def unpack_reload_pro():
    _unpack_reload()


def _unpack_reload():
    run('whoami')
    with cd('/home/web/webservice/'):
        run('ls -lh | grep Lehavre')
        put('./Lehavre.tar.gz',
            'Lehavre.tar.gz')
        run('ls -lh | grep Lehavre')
        run('tar -xf Lehavre.tar.gz')
        run('find ./ -name "*.pyc" -delete')
        run('/home/web/env/lehavre_dev/bin/python Lehavre/manage.py check')
        run('sudo service lehavre restart')
        need_reload_celery = raw_input('reload celery task?[Y/n]: ')
        if need_reload_celery and need_reload_celery.lower() in ['y', 'yes']:
            need_reload_celery = 'yes'
            run('supervisorctl -c /home/web/webservice/confs/supervisord/worker.conf restart all')
        else:
            need_reload_celery = 'no'
    print('done deploy')


def publish():
    print('-------start--deploy-------')
    local('cd ./Lehavre')
    local('find ./ -name "*.pyc" -delete')
    local('find ./ -name "__pycache__" | xargs rm -rf')
    local('cd ..')
    local('find ./ -name "Lehavre.tar.gz" | xargs rm')
    local("tar zcf Lehavre.tar.gz --exclude ./Lehavre/logs --exclude='./Lehavre/docs' \
            --exclude='./Lehavre/.git' --exclude='./Lehavre/.env' ./Lehavre")
    execute(unpack_reload_pro)

@roles('celery')
def reload_celery():
    run('supervisorctl -c \
        /home/web/webservice/confs/supervisord/worker.conf restart all')
    print('celery restart done')