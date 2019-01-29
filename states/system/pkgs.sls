{% if pillar.get('pkgs') %}
system-pkgs:
  pkg.installed:
    - pkgs:
      {%- for pkg in pillar.get('pkgs', {}) %}
        - {{ pkg }}
      {% endfor %}
    - require:
      - cmd: system-repository-conf
{% endif %}

system-pkgs-vim:
  pkg.installed:
{% if salt['pillar.get']('vim-graphic', False) %}
    - name: gvim
{% else %}
    - name: vim
{% endif %}
    - require:
      - cmd: system-repository-conf
