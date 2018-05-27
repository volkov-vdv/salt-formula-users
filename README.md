The formula creates and deletes users.
To work the formula, you need to edit two pillar files (/ test / pillar / users / centos and / test / pillar / users / ubuntu) after running the command: salt '*' state.apply users


example.piller
Delete_user:
  canonical:
    name: canonical
    purge: True
Create the user:
  redhat:
    fullname: redhat
    shell: /bin/csh
    home: /home/redhat
    uid: 10000
    gid: 10000
    system: True
    gid_from_name: True
    password: $6$85hASxXH$KPbwc89gfuXMGeaKtAt5PnWJwWmK5kK/5gVOD9Y52p0WOeACVXiPvqq03ZUSmj6ko7Q13LLZw9/xzpgQTWH2ni0
    groups:
      - wheel
    ssh_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC140iyKp86mIpLwb38610lJP7wlGJJ
