iptables:
  service:
    - name: iptables
    - running
    - reload: True
    - watch:
       - file: /etc/sysconfig/iptables
/etc/sysconfig/iptables:
  file:
    - managed
    - source: salt://iptables
    - user: root
    - group: root
    - mode: 644
    - backup: minion
