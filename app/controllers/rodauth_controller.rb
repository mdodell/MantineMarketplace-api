class RodauthController < ApplicationController
  before_action :authenticate, only: [:profile]

  ## Get Currnet User
  def profile
    if current_account.nil?
      render json: {}, status: :unauthorized 
    else
      render json: { user: current_account }, status: :ok
    end
  end
end
