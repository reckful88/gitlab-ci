#!/usr/bin/env python2

from fabric.api import env, local, settings, put, cd, run, task

env.use_ssh_config = True

project_dir = '/home/fe/prod/universal/'
deploy_dir = '/home/fe/new.speedx.com/'

@task
def build(pkg=False):
    with cd(project_dir):
        run('cp -f package.json ~/package.json_backup && git reset --hard HEAD && git pull && cp -f ~/package.json_backup package.json')
        if pkg == True :
            run('cd /home/fe/tetris && git pull')
            run('cd -')
            run('cnpm install')
        run('cnpm run build')

@task
def deploy():
    with cd(project_dir):
        run('cp -rf %sstatic/* %s' % (project_dir, deploy_dir))

@task
def start():
    with cd(project_dir):
        run('forever stopall')
        with settings(warn_only=True):
            run('killall node')
        run('forever start -c "npm run start-prod" .')
        run('forever start -c "npm run start-prod-api" .')

@task
def full(pkg=False):
    build(pkg)
    deploy()
    start()
@task
def tailError():
    run('tail -f /var/log/nginx/error.log')

@task
def logs(file=''):
    if file == '':
        run ('forever list')
    else:
        run ('tail -f %s' % file)