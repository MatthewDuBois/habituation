class Api::AvatarsController < ApplicationController
  
  def index
    @avatars = Avatar.all
    render 'index.json.jbuilder'
  end


  def create
    @avatar = Avatar.new(
                        name: params[:name],
                        email: params[:email],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation],

                        )

    if @avatar.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @avatar.errors.full_message}, status: :bad_request  
    end
  end


  def show
    @avatar = current_avatar
    render 'show.json.jbuilder'
  end

  def update
      @avatar = current_avatar

      @avatar.name = params[:name] || @avatar.name
      @avatar.avatar_url = params[:avatar_url] || @avatar.avatar_url
      @avatar.email = params[:email] || @avatar.email
      @avatar.gold_total = params[:gold_total] || @avatar.gold_total
      @avatar.xp_total = params[:xp_total] || @avatar.xp_total
      @avatar.level = params[:level] || @avatar.level

      @avatar.physicality = params[:physicality] || @avatar.physicality
      @avatar.intelligence = params[:intelligence] || @avatar.intelligence
      @avatar.mindfulness = params[:mindfulness] || @avatar.mindfulness
      @avatar.humility = params[:humility] || @avatar.humility
      @avatar.intuition = params[:intuition] || @avatar.intuition
      @avatar.zen = params[:zen] || @avatar.zen
      @avatar.knowledge = params[:knowledge] || @avatar.knowledge
      @avatar.gratitude = params[:gratitude] || @avatar.gratitude
      @avatar.vigor = params[:vigor] || @avatar.vigor
      @avatar.path = params[:path] || @avatar.path
      @avatar.points = params[:points] || @avatar.points
  

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
