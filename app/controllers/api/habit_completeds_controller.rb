class Api::HabitCompletedsController < ApplicationController

  def create
    @habit_completeds = HabitCompleted.new(
                    habit_id: params[:habit_id]
                    )

    xp = current_avatar.xp_total
    habits = current_avatar.habits
    gold = current_avatar.gold_total

    habits.each do |habit|
      if habit.id == params[:habit_id]
        if habit.difficulty == "easy"
          xp += 17
          gold += 4
        elsif habit.difficulty == "medium"
          xp += 32
          gold += 9
        else habit.difficulty == "hard"
          xp += 48
          gold += 15
        end   
      end
        current_avatar.update(xp_total: xp)
        current_avatar.update(gold_total: gold)
    end

    current_avatar.check_level
   
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