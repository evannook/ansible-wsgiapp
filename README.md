sysbase
=======

WSGI app setup

Role Variables
--------------

```yaml
wsgiapp_project_name: YOUR_WSGI_APP_PROJECT_NAME
wsgiapp_domain_name: YOUR_WSGI_APP_DOMAIN_NAME
wsgiapp_basedir: YOUR_WSGI_APP_BASE_DIR
wsgiapp_scm: YOUR_SCM_TOOLS (git or hg)
wsgiapp_repo: REPO_PATH
```

Dependencies
------------

- pylabs.python
- pylabs.nginx
- pylabs.uwsgi

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
    - role: pylabs.wsgiapp
  vars:
    wsgiapp_project_name: myproject
    wsgiapp_domain_name: www.example.com
    wsgiapp_basedir: /srv/www/myproject
    wsgiapp_scm: git
    wsgiapp_repo: https://github.com/pylabs/test_project
```

License
-------

MIT

Author Information
------------------

William Wu
