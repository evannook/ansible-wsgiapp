python_wsgiapp
===============

Pyramid WSGI app setup

Role Variables
--------------

```yaml
python_wsgiapp_web_base_dir: YOUR_WEB_BASE_DIR (default: /srv/www)
python_wsgiapp_vars:
  - domain_name: YOUR_PYTHON_WSGI_APP_DOMAIN_NAME
    base_dir: YOUR_PYTHON_WSGI_APP_BASE_DIR
    clone_cmd: CLONE_REPO_COMMAND
    repo_url: YOUR_REPO_URL
```

Dependencies
------------

- pylabs.python3
- pylabs.uwsgi

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
    - role: pylabs.python_wsgiapp
  vars:
    python_wsgiapp_vars:
      - domain_name: www.example.com
        base_dir: /srv/www/myproject
        clone_cmd: git clone https://www.example.com/example/example.git
      - domain_name: www2.example.com
        base_dir: /srv/www/another_project
        clone_cmd: git clone git@www.example.com:example/example.git
```

License
-------

MIT

Author Information
------------------

William Wu
