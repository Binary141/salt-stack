{% for file in pillar.get('somefiles', {}) %}
{{ file }}:
  cmd.run:
    - name: 'touch /tmp/{{ file }}'
{% endfor %}
