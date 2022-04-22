#top.sls
base:
  'ip-10-0-1-181.ec2.internal':
    - make_groups
    - make_users
