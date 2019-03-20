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
    
    
  end

end
