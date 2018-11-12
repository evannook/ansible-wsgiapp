python_wsgiapp
===============

Pyramid WSGI app setup

Role Variables
--------------

```yaml
python_wsgiapp_project_name: YOUR_PYTHON_WSGI_APP_PROJECT_NAME
python_wsgiapp_domain_name: YOUR_PYTHON_WSGI_APP_DOMAIN_NAME
python_wsgiapp_basedir: YOUR_PYTHON_WSGI_APP_BASE_DIR (default: /srv/www/{{ python_wsgiapp_domain_name }})
python_wsgiapp_scm: YOUR_SCM_TOOLS (git or hg) (default: git)
python_wsgiapp_repo: REPO_PATH
```

Dependencies
------------

- pylabs.python3
- pylabs.nginx
- pylabs.uwsgi

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
    - role: pylabs.python_wsgiapp
  vars:
    python_wsgiapp_project_name: myproject
    python_wsgiapp_domain_name: www.example.com
    python_wsgiapp_basedir: /srv/www/myproject
    python_wsgiapp_scm: git
    python_wsgiapp_repo: https://github.com/pylabs/test_project
```

License
-------

MIT

Author Information
------------------

William Wu
