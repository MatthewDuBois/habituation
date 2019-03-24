class Api::SpecializationsController < ApplicationController
  before_action :pick_special

 def index
    @specializations = Specialization.all
    render 'index.json.jbuilder'
  end

  def show
    @specialization = Specialization.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @specialization = Specialization.new(
                      avatar_id: params[:avatar_id],
                      name: params[:name],
                      code: params[:code]
                        )
    avatar = current_avatar
    

    
  end

end
