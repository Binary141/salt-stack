# Create the /salt_share/vegetables
/salt_share/vegetables:
  cmd.run:
    - name: mkdir -p /salt_share/vegetables

# install the nfs server
nfs-kernel-server2:
  pkg:
    - name: nfs-kernel-server
    - installed

# append the folder to export in /etc/exports
/etc/exports:
  file.append:
    - text:
      - "/salt_share/vegetables 10.0.1.0/24(rw,no_root_squash,async,no_subtree_check)"

# restart the nfs server
nfs-kernel-server:
  cmd.run:
    - name: service nfs-kernel-server restart
