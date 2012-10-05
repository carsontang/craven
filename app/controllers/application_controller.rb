class ApplicationController < ActionController::Base
  protect_from_forgery
  include ApplicationHelper

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end
end
