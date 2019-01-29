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
    password: $6$09rXqOQDJ.A$EWFhzmFO3jPGsqlFgjD.fug7oX.wXwzSwC.rUSb5deMUJMD0ovzmZBdRjkXriIQkIdRzXcTwG6xXnswKRR8Jj1
    shell: /bin/bash
    user_files:
      enabled: True
      source: salt://files/default/home/root

salt-minion-prefix: gcc-archlinux

sddm-title: "--- Girls Can Code! ---"
sddm-footer: "build: yes"
