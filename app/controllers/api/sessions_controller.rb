class Api::SessionsController < ApplicationController
  def create
    avatar = Avatar.find_by(email: params[:email])
    if avatar && avatar.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: avatar.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        'HS256' # the encryption algorithm
      )
      render json: {jwt: jwt, email: avatar.email, user_id: avatar.id}, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

end
