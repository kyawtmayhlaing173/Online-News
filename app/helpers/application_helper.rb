module ApplicationHelper

  def index
    if current_page? (root_path)
      content_tag(:li , link_to('Home' , root_path), :class => "active")
    else
      life_style_link
    end
  end

  def current_class?(test_path)
    #debugger
  return 'active' if request.path == test_path
end

  def nav_item_active_if(condition, attributes = {}, &block)
    if condition
      attributes["class"] = "active"
      debugger
    end
    content_tag(:li, attributes, &block)
  end
end
