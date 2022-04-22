{% for group, item in pillar.get('groups', {}).items() %}
{{ group }}:
  group.present
{% endfor %}
