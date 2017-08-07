#!/usr/bin/env python2

from fabric.api import env, local, settings, put, cd, run, task

env.use_ssh_config = True

deploy_dir = '/home/fe/prod/account/'
test_deploy_dir = '/home/web/account/'

@task
def build():
    local('npm run deploy:prod')

@task
def deploy():
    put('dist/*', deploy_dir)

@task
def full():
    build()
    deploy()

@task
def tailError():
    run('tail -f /var/log/nginx/error.log')

@task
def deployTest():
    local('export BASENAME=\'/account\' && npm run deploy')
    put('dist/*', test_deploy_dir)