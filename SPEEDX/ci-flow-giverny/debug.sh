export LC_APP_ID='x8zh25disrdijhti60mpmgx5dba18p8kiw73dufi7r523tl6'
export LC_APP_KEY='n0yhp7uvy60en1fp1neh18krjh067ui0da8z83w31wmtvbgp'
export LC_APP_MASTER_KEY='ibjp94jg0imovcm81uqbtl9px70te2ypi2rh5xa4f4y00e9h'
export LC_APP_PORT=3000
find ./ -name "*.pyc" -delete
find ./ -name "__pycache__" | xargs rm -rf
python manage.py shell 
