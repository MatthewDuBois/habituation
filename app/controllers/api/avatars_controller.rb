class Api::AvatarsController < ApplicationController

  def create
    avatar = Avatar.new(
                        name: params[:name],
                        email: params[:email],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation]
                        )

    if avatar.save
      render json: {message: 'avatar created successfully'}, status: :created
    else
      render json: {errors: avatar.errors.full_message}, status: :bad_request  
    end
  end

  
end
