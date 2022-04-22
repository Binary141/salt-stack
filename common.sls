/salt_shared:
  file.directory:
    - user: ubuntu
    - group: ubuntu

/salt_shared/vegetables:
  file.directory:
    - user: ubuntu
    - group: ubuntu

nfs-kernel-server:
  pkg:	
    - installed
