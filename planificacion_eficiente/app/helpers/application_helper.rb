module ApplicationHelper

  def show_name(name)
  content_tag(:label, name, :class => 'control-label')
end
end
