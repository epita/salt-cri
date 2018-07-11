network-dns-enable-resolved:
  service.running:
    - name: systemd-resolved
    - enable: True

network-dns-configure-resolv-conf:
  file.copy:
    - source: /etc/resolv.conf
    - name: /usr/lib/systemd/resolv.conf
    - force: True
