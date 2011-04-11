module ApplicationHelper
  def merge_tags(val)
    val.gsub(/%%([^%]+)%%/) { |m| eval($1) }.html_safe
  end
end
