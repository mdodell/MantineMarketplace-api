class RodauthController < ApplicationController
  # used by Rodauth for rendering views, CSRF protection, and running any
  # registered action callbacks and rescue_from handlers
  before_action :authenticate, only: [:profile]

  # GET /accounts/current
  def profile
    if current_account.nil?
      render json: {}, status: :unauthorized 
    else
      render json: {user: current_account}, status: :ok
    end
  end
end
