class Api::SessionsController < ApplicationController
  def create
    avatar = Avatar.find_by(email: params[:email])
    if avatar && avatar.authenticate(params[:password])
      jwt = JWT.encode(
        {
          avatar_id: avatar.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        'HS256' # the encryption algorithm
      )
      render json: {jwt: jwt, email: avatar.email, avatar_id: avatar.id}, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
      avatar = Avatar.find(params[:id])
      avatar.destroy
      render json: {message: "Successfully removed avatar."}
    end  

end
