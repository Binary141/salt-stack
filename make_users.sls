{% for user, group in pillar.get('users', {}).items() %}
{{ user }}:
  user.present:
    - groups: {{ group }}
{% endfor %}

