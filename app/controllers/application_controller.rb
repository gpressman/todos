class ApplicationController < ActionController::Base
  
  def authenticate
  	if !signed_in?
  	  redirect_to new_session_path
  	end
  end

  def signed_in?
  	current_email.present?
  end

  def current_email
  	session[:current_email]
  end

  def sign_in_as(email)
  	session[:current_email] = email
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
