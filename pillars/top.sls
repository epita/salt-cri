base:
  '*':
    - ssh.common
    - pkgs.common

  'pie-archlinux-*':
    - main.archlinux
    - pkgs.misc
    - pkgs.xorg
    - pkgs.cd68k
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-iso
    - pkgs.dev-sdl
    - pkgs.archlinux
    - pkgs.vcsn
    - pkgs.glp1.myreadiso

  'sup-archlinux-*':
    - main.sup-archlinux
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.dev
    - pkgs.sup-archlinux
    - pkgs.ocaml

  'browser-archlinux-*':
    - main.browser-archlinux
    - pkgs.xorg
    - pkgs.browser-archlinux

  'coding-archlinux-*':
    - main.coding
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-python
    - pkgs.coding

  'cuda-archlinux-*':
    - main.cuda-archlinux
    - pkgs.misc
    - pkgs.xorg
    - pkgs.cd68k
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-sdl
    - pkgs.archlinux
    - pkgs.gpgpu

  'dump-*':
    - main.dump
    - pkgs.dump
