class Admin::SessionsController < Devise::SessionsController
  layout "admin/application"

  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    redirect_to admin_root_path
  end
end
