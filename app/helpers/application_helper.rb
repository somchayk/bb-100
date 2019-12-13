module ApplicationHelper
  def flash_class(level)
    case level
      when :success then "YAY!"
      when :error then "Double Check to make sure everything is correct"
    end
  end
end
