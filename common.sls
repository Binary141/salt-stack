# Create the /salt_share
/salt_share:
  file.directory:
    - user: ubuntu
    - group: ubuntu

# Create the /salt_share/vegetables
/salt_shared/vegetables:
  file.directory:
    - user: ubuntu
    - group: ubuntu

# append the folder to export in /etc/exports
/etc/exports:
  file.append:
    - text:
      - "TODO add the line for the export of the file"

# restart the nfs server
nfs-kernel-server:
  service.running:
    - enable: True
    - reload: True

