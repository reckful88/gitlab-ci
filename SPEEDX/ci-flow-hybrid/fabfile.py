#!/usr/bin/env python2

from fabric.api import env, local, settings, put, cd, run, task

env.use_ssh_config = True

deploy_dir = '/home/fe/prod/hybrid/'
# test_deploy_dir = '/home/fe/hybrid/'

@task
def build():
    local('npm run deploy:prod')

@task
def upload(dest):
    run('rm -rf ' + deploy_dir + '*')
    put('dist/*', dest)

@task
def deploy():
    build()
    upload(deploy_dir)

@task
def deployDev():
    local('npm run deploy')
    run('rm -rf ' + deploy_dir + '*')
    put('dist/*', deploy_dir) # NOTE(LETO) before docker's back online, we use web3 prod to test

@task
def tailError():
    run('tail -f /var/log/nginx/error.log')

@task
def runDev():
		local('export BASENAME=\'/hybrid\' && npm run dev')

