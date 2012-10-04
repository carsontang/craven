class ApplicationController < ActionController::Base
  protect_from_forgery
    def current_dish=(dish)
    session[:remember_token] = dish.id
  end

  def current_dish
    @current_dish ||= Dish.find(session[:remember_token])
  end

  # read about sessions, why isn't session being stored?
end
