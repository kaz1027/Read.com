class ApplicationController < ActionController::Base
  
  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def after_sign_in_path_for(resource)
    root_path(resource.id)
  end
end
