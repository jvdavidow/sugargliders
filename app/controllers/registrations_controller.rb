class RegistrationsController < Devise::RegistrationsController

  protected

    def after_update_path_for(resource)
      puts "inside after_update_path_for"
      user_path(resource)
    end
end