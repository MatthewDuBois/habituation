class Api::LootsController < ApplicationController

  def index
    @loots = Loot.all
    render 'index.json.jbuilder'
  end

  def create
    loot = Loot.new(
                    name: params[:name],
                    cost: params[:cost]
                    )

    if loot.save
      render json: {message: 'loot created successfully'}, status: :created
    else
      render json: {errors: loot.errors.full_message}, status: :bad_request  
    end
  end

  def show
    @loot = Loot.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
      @loot = Loot.find(params[:id])

      @loot.name = params[:name] || @loot.name
      @loot.cost = params[:cost] || @loot.cost

      if @loot.save
        render 'show.json.jbuilder'
      else
        render json: { errors: @loot.errors.full_messages }, status: :unprocessable_entity
      end
    end

  def destroy
      loot = Loot.find(params[:id])
      loot.destroy
      render json: {message: "Successfully removed loot."}
    end  
end
