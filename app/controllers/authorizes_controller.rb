class AuthorizesController < ApplicationController
  before_action :authorize, only: [:secret]
  
  def secret
    render :test
  end
end