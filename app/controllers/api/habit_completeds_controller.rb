class Api::HabitCompletedsController < ApplicationController

  def create
    @habit_completeds = HabitCompleted.new(
                    habit_id: params[:habit_id],
                    )

    if @habit_completeds.save
      render json: {message: 'habit_completeds created successfully'}, status: :created
    else
      render json: {errors: @habit_completeds.errors.full_message}, status: :bad_request  
    end
  end

  def destroy
      habit_completeds = HabitCompleted.find(params[:id])
      habit_completeds.destroy
      render json: {message: "Successfully removed habit_completeds."}
    end  
end

# when completed...create action updates gold and ex total....assign level based on total xp