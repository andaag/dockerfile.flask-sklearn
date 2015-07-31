server {
    listen 80 default_server;
    listen [::]:80 default_server ipv6only=on;

    location / {
        include         uwsgi_params;
        uwsgi_pass      unix:/tmp/app.sock;
    }
}
