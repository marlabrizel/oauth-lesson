class SessionsController < ApplicationController
  def create
    User.find_or_create_from_auth(oauth_data)
  end

  private

  def oauth_data
    request.env['omniauth.auth']
  end
end
