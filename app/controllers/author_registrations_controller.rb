class AuthorRegistrationsController < Devise::RegistrationsController
  layout 'layouts/administrator/application' 

  private
  
  def account_update_params
    params.require(:author).permit(:name, :avatar, :email, :password, :password_confirmation, :current_password)
  end
end