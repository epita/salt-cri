users:
  epita:
    fullname: Epita
    home: /home/epita
    shell: /bin/bash
    empty_password: True
    groups:
      - audio
      - video

  root:
    password: $1$f3rZ51yv$O1WONwSt4zoKS8IiAeXvy/
    shell: /bin/bash
    user_files:
      enabled: True
      source: salt://files/default/home/root

salt-minion-prefix: pie-archlinux

sddm-title: "--- Arch Linux ---"
sddm-footer: "build: {{ "now"|strftime("%y%m%d-%H%m") }}"
