class RegistrationsController < Devise::RegistrationsController

  protected

  def after_update_path_for(_resource)
    flash[:notice] = "Account succesfully updated"
    new_dog_walker_path
  end
end
