network-dhcp-enable-networkd:
  service.running:
    - name: systemd-networkd
    - enable: True

network-dhcp-configure-networkd-wifi:
  file.managed:
    - name: /etc/systemd/network/20-wifi.network
    - contents: |
        [Match]
        Driver=iwlwifi
        [Link]
        Unmanaged=yes
        RequiredForOnline=no
    - watch_in:
      - service: network-dhcp-enable-networkd

network-dhcp-configure-networkd-dhcp:
  file.managed:
    - name: /etc/systemd/network/30-dhcp.network
    - contents: |
        [Match]
        Name=*
        Driver=!iwlwifi
        [Network]
        DHCP=ipv4
        {% if salt['pillar.get']('networkd-domains') %}
        Domains={{ salt['pillar.get']('networkd-domains') }}
        UseDomains=true
        {% endif %}
    - watch_in:
      - service: network-dhcp-enable-networkd
