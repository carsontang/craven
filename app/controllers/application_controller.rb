class ApplicationController < ActionController::Base
  protect_from_forgery
  include ApplicationHelper

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
  
  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end
end
