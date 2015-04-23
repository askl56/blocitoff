module Api
  class ApiController < ApplicationController
    skip_before_filter :verify_authenticity_token
    protect_from_forgery with: :null_session
    before_filter :authenticate

    def current_user
      @current_user
    end


    def authenticate
      Rails.logger.info "API authentication:#{email} #{password}"
      user = User.find_by(params[:id])
      if user && user.authenticate(password)
        Rails.logger.info "Logging in #{user.inspect}"
        true
      else
        Rails.logger.warn "No valid credentials"
        false
      end
    end

  end
end
