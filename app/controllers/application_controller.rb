class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit
  protect_from_forgery with: :exception
 
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

private

def user_not_authorized(exception)
  policy_name = exception.policy.class.to_s.underscore
  flash[:warning] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
  redirect_to(request.referrer || root_path)
end

 

end
