class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def hello 
	render text: "hello world!!!!!"
end

     #the path used after user signs in (takes them to useinfo page)
   def after_sign_in_path_for(resource) 
     '/page/userinfo'
  end 


end
