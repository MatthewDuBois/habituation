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


  def show
    @avatar = Avatar.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
      @avatar = Avatar.find(params[:id])

      @avatar.name = params[:name] || @avatar.name
      @avatar.avatar_url = params[:avatar_url] || @avatar.avatar_url
      @avatar.email = params[:email] || @avatar.email
      @avatar.currency_total = params[:currency_total] || @avatar.currency_total
      @avatar.level = params[:level] || @avatar.level

      if @avatar.save
        render 'show.json.jbuilder'
      else
        render json: { errors: @avatar.errors.full_messages }, status: :unprocessable_entity
      end
    end

  def destroy
      avatar = Avatar.find(params[:id])
      avatar.destroy
      render json: {message: "Successfully removed avatar."}
    end  


end
