class Api::HabitsCompletedsController < ApplicationController
  belongs_to :habit

  def create
    habits_completed = Habits_completed.new(
                    name: params[:name],
                    cost: params[:cost]
                    )

    if habits_completed.save
      render json: {message: 'habits_completed created successfully'}, status: :created
    else
      render json: {errors: habits_completed.errors.full_message}, status: :bad_request  
    end
  end

  def destroy
      habits_completed = Habits_completed.find(params[:id])
      habits_completed.destroy
      render json: {message: "Successfully removed habits_completed."}
    end  
end
