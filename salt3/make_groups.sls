{% for group, item in pillar.get('groups', {}).items() %}
{{ group }}:
  group.present

/work/{{ group }}:
  file.directory:
    - makedirs: True
    - group: {{ group }}
    - dir_mode: 2770
{% endfor %}


