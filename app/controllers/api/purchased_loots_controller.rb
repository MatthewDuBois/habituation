class Api::PurchasedLootsController < ApplicationController
  belongs_to :avatar
  belongs_to :loot

  def create
    purchased_loot = Purchased_loot.new

    if purchased_loot.save
      render json: {message: 'purchased_loot created successfully'}, status: :created
    else
      render json: {errors: purchased_loot.errors.full_message}, status: :bad_request  
    end
  end

  def destroy
      purchased_loot = Purchased_loot.find(params[:id])
      purchased_loot.destroy
      render json: {message: "Successfully removed purchased_loot."}
    end  
end
