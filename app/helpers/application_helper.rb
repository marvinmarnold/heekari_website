module ApplicationHelper
  def append_first(base, append, scope="default")
    append_list = instance_variable_get("@appended_list_#{scope}")

    if append_list.blank?
      instance_variable_set("@appended_list_#{scope}", true)
      return "#{base} #{append}"
    end
    base
  end
end