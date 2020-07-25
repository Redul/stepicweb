sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/hello.py  /etc/gunicorn.d/test
sudo /etc/init.d/nginx restart
sudo /etc/init.d/gunicorn restart
sudo gunicorn -c /home/box/web/etc/hello.py hello:wsgi_application
sudo gunicorn -c /home/box/web/etc/hello-django.py ask.wsgi:application
