json.id habit.id
json.name habit.name
json.description habit.description
json.active habit.active
json.xp habit.xp
json.gold habit.gold
json.difficulty habit.difficulty
json.routine_time_increment habit.routine_time_increment
json.routine_time_quantity habit.routine_time_quantity
# json.avatar_id habit.avatar_id

json.habit_completeds do
  json.array! habit.habit_completeds, partial: 'api/habit_completeds/habit_completed', as: :habit_completed
end