module ApplicationHelper
  def current_user?(user)
    user == current_user
  end

  def current_user_path=(path)
    
  end

  def current_user_path
  end

end
