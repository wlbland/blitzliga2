class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit
  protect_from_forgery

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?


  protected

    def after_sign_in_path_for(resource)
      stored_location_for(resource) ||
        if resource.is_a?(User) && resource.admin?
          users_path
        else
          super
        end
    end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

end
