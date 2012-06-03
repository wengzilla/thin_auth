class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def after_sign_out_path_for(resource_or_scope)
    cookies.delete :user
    root_path
  end
end
