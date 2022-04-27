del-default:
  cmd.run:
    - name: 'rm -rf /etc/nginx/sites-available/default'

del-myhost:
  cmd.run:
    - name: 'rm -rf /etc/nginx/sites-available/{{ pillar['myhost'] }}'
thing1:
  cmd.run:
    - name: 'echo "server {" >> /etc/nginx/sites-available/{{ pillar['myhost'] }}'
thing2:
  cmd.run:
    - name: 'echo "listen 80 default_server;" >> /etc/nginx/sites-available/{{ pillar['myhost'] }}'
thing3:
  cmd.run:
    - name: 'echo "listen [::]:80 default_server;" >> /etc/nginx/sites-available/{{ pillar['myhost'] }}'
thing4:
  cmd.run:
    - name: 'echo "root /var/www/html/{{ pillar['myhost'] }};" >> /etc/nginx/sites-available/{{ pillar['myhost'] }}'
thing5:
  cmd.run:
    - name: 'echo "index index.html;" >> /etc/nginx/sites-available/{{ pillar['myhost'] }}'
thing6:
  cmd.run:
    - name: 'echo "server_name _;" >> /etc/nginx/sites-available/{{ pillar['myhost'] }}'
thing7:
  cmd.run:
    - name: 'echo "location / {" >> /etc/nginx/sites-available/{{ pillar['myhost'] }}'
thing8:
  cmd.run:
    - name: 'echo "     try_files $uri $uri/ =404;" >> /etc/nginx/sites-available/{{ pillar['myhost'] }}'
thing9:
  cmd.run:
    - name: 'echo "}" >> /etc/nginx/sites-available/{{ pillar['myhost'] }}'
thing10:
  cmd.run:
    - name: 'echo "}" >> /etc/nginx/sites-available/{{ pillar['myhost'] }}'

create-root:
  cmd.run:
    - name: 'mkdir -p /var/www/html/{{ pillar['myhost'] }}'

create-html-doc:
  cmd.run:
    - name: 'echo "testing {{ pillar['myhost'] }}" >> /var/www/html/{{ pillar['myhost'] }}/index.html'
