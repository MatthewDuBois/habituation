class Api::HabitsController < ApplicationController
  
  def index
    @habits = Habit.all
    render 'index.json.jbuilder'
  end

  def create
    @habit = Habit.new(
                      name: params[:name],
                      description: params[:description],
                      active: params[:active],
                      difficulty: params[:difficulty],
                      xp: params[:xp],
                      routine_time_increment: params[:routine_time_increment],
                      routine_time_quantity: params[:routine_time_quantity],
                      completed: params[:completed],
                      gold: params[:gold],
                      avatar_id: current_avatar.id
                      )

    if @habit.save
      render json: {message: 'habit created successfully'}, status: :created
    else
      render json: {errors: habit.errors.full_message}, status: :bad_request  
    end
  end

  def show
    @habit = Habit.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
      @habit = Habit.find(params[:id])

      @habit.name = params[:name] || @habit.name
      @habit.description = params[:description] || @habit.description
      @habit.difficulty = params[:difficulty] || @habit.difficulty
      @habit.active = params[:active] || @habit.active
      @habit.completed = params[:completed] || @habit.completed
      @habit.xp = params[:xp] || @habit.xp
      @habit.gold = params[:gold] || @habit.gold
      @habit.routine_time_increment = params[:routine_time_increment] || @habit.routine_time_increment
      @habit.routine_time_quantity = params[:routine_time_quantity] || @habit.routine_time_quantity

      if @habit.save
        render 'show.json.jbuilder'
      else
        render json: { errors: @habit.errors.full_messages }, status: :unprocessable_entity
      end
    end

  def destroy
      habit = Habit.find(params[:id])
      habit.destroy
      render json: {message: "Successfully removed habit."}
    end  
end
