class Users::RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password) }
  end
  
end

#def resource_params
  #  params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  #end
  #private :resource_params