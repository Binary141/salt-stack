/etc/skel/.profile:
  file.replace:
    - pattern: '^#umask 022'
    - repl: umask 770
