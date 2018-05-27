{% for user, data in pillar.get('Delete_user', {}).items() %}
Delete {{ user }}:
  user.absent:
     - name: {{ user }}
     - purge: {{ data['purge'] }}

{% endfor %}
{% for user, data in pillar.get('Create the user', {}).items() %}
Create the user {{ user }}:
  group.present:
    - name: {{ user }}
    - gid: {{ data['gid'] }}
    - system: {{ data['system'] }}
  user.present:
    - name: {{ user }}
    - fullname: {{ data['fullname'] }}
    - shell: {{ data['shell'] }}
    - home: {{ data['home'] }}
    - uid: {{ data['uid'] }}
    - gid_from_name: {{ data['gid_from_name'] }}
    - password: {{ data['password'] }}
    - groups: {{ data['groups'] }}

{{ user }}_key:      
  ssh_auth.present:
    - name: {{ data['ssh_key'] }}
    - user: {{ user }}

{% endfor %}   

