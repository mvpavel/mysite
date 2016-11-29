class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_filter :nav_links

  def nav_links

  	@pages = Page.all
  end

def after_sign_in_path_for(resource)
  user_root_path
end

 
def after_sign_out_path_for(resource_or_scope)
  request.referrer
end

end
