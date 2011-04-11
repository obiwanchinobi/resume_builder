module ApplicationHelper
  def merge_tags(val)
    val.gsub(/%%([^%]+)%%/) { |m| eval($1) }.html_safe
  end
  
  def display_right_border(obj)
    obj.responsibilities.size > obj.tags.size ? true : false
  end
end
