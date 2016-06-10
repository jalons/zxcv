vim:
  pkg.installed

.vimrc:
  file.managed:
    - name: /Users/jalons/.vimrc
    - source: salt://files/.vimrc
    - tempate: jinja
