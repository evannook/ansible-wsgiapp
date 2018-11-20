python_wsgiapp
===============

Pyramid WSGI app setup

Role Variables
--------------

```yaml
python_wsgiapp_vars:
  - domain_name: YOUR_PYTHON_WSGI_APP_DOMAIN_NAME
    base_dir: YOUR_PYTHON_WSGI_APP_BASE_DIR
    scm: YOUR_SCM_TOOLS (git or hg)
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
        scm: git
        repo_url: https://github.com/pylabs/myproject
      - domain_name: www2.example.com
        base_dir: /srv/www/another_project
        scm: git
        repo_url: https://github.com/pylabs/another_project
```

License
-------

MIT

Author Information
------------------

William Wu
