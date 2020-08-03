from django import template

register = template.Library()

@register.filter(name="split_by")
def split_by(value, split_by='\n'):
    if value is None: return value
    return value.split(split_by)

@register.simple_tag
def define(val=None):
  return val
