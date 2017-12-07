class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?
  def current_user
   # This checks if there is an id for the session. If there is, the user is grabbed from the the data base by session[:user_id]. If not, current_user is empty.
   if session[:user_id]
     @current_user ||= User.find(session[:user_id])
   end
 end


 def logged_in?
   # This returns a ture boolean if the current_user is truthy.
   !!current_user
 end


 def authorized
   if logged_in?
     #If logged_in is true, proceed as normal
   else
     # else return to the the sign-in login path
     redirect_to signin_path
   end
 end
end
