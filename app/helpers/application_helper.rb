module ApplicationHelper
  def bootstrap_class_for flash_type
    if flash_type == "error"
      return "alert-danger"
    else
      return "alert-success"
    end
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in text-center") do
        concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
        concat message
      end)
    end
    nil
  end
end
