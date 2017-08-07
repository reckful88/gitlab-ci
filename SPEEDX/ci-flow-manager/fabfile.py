#!/usr/bin/env python2

from fabric.api import env, local, settings, put, cd, run, task

env.use_ssh_config = True

deploy_dir = '/home/fe/prod/manager/'
test_deploy_dir = '/home/web/manager/'

@task
def build():
    local('rm -rf dist')
    local('npm run deploy:prod')

@task
def deploy():
    put('dist/*', deploy_dir)

@task
def upload(dest):
		put('dist/*', dest)

@task
def full():
    build()
    deploy()

@task
def tailError():
    run('tail -f /var/log/nginx/error.log')

@task
def deployTest():
    local('export BASENAME=\'/manager\' && npm run deploy')
    upload(test_deploy_dir)

@task
def runDev():
		local('export BASENAME=\'/manager\' && npm run dev')