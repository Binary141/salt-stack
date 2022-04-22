# Create the /salt_share/vegetables
/salt_share/vegetables:
  cmd.run:
    - name: mkdir -p /salt_share/vegetables

# install the nfs server
nfs-common-install:
  pkg:
    - name: nfs-common
    - installed

mount-nfs:
  mount.mounted:
    - device: 10.0.1.181:/salt_share/vegetables
    - name: /salt_share/vegetables
    - fstype: nfs
