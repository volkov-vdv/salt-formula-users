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
    password: $6$85hASxXH$KPbwc89gfuXMGeaKtAt5PnWJwWmK5kK/5gVOD9Y52p0WOeACVXiPvq03ZUSmj6ko7Q13LLZw9/xzpgQTWH2ni0
    groups:
      - wheel
    ssh_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC140iyKp86mIpLwb38610lJP7wlGJbb2/gzv5mBdsqqNl+nm241uzPWXxMbGPU7w0t/RARBlIYhMVvLa7dEeYKORLjj+HnB/8BANYmHVWJqpTOLFpX00AnNSSlppUqIZ/xzgKLCcYRVorrL81RKT44nBtmaTfnb/i5T4GDQ6NL8DbItPg4aWSqfJ3YsWxjzQRmJDT1/IqheHHg5PwAOkhyQLSrwM5V/2kVPYjjif7nG58bFLp3G7A8jgPn//y/ft2reaTv+YI10VoC99W9lmJ9juUxQ/LL5s4FN0KCE8XyVShypFV2Hf2TWE37pzPVOFuMd4c8ZjYKicA9vRz/DPj191IJ root@ubuntu    
