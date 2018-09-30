pyramid-wsgiapp
===============

Pyramid WSGI app setup

Role Variables
--------------

```yaml
pyramid_wsgiapp_project_name: YOUR_PYRAMID_WSGI_APP_PROJECT_NAME
pyramid_wsgiapp_domain_name: YOUR_PYRAMID_WSGI_APP_DOMAIN_NAME
pyramid_wsgiapp_basedir: YOUR_PYRAMID_WSGI_APP_BASE_DIR (default: /srv/www/{{ pyramid_wsgiapp_domain_name }})
pyramid_wsgiapp_scm: YOUR_SCM_TOOLS (git or hg) (default: git)
pyramid_wsgiapp_repo: REPO_PATH
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
    - role: pylabs.pyramid_wsgiapp
  vars:
    pyramid_wsgiapp_project_name: myproject
    pyramid_wsgiapp_domain_name: www.example.com
    pyramid_wsgiapp_basedir: /srv/www/myproject
    pyramid_wsgiapp_scm: git
    pyramid_wsgiapp_repo: https://github.com/pylabs/test_project
```

License
-------

MIT

Author Information
------------------

William Wu
