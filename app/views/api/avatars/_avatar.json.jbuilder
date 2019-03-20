json.id avatar.id
json.name avatar.name
json.email avatar.email
json.gold_total avatar.gold_total
json.xp_total avatar.xp_total
json.level avatar.level
json.avatar_class avatar.avatar_class

json.physicality avatar.physicality
json.intelligence avatar.intelligence
json.mindfulness avatar.mindfulness
json.humility avatar.humility
json.intuition avatar.intuition
json.zen avatar.zen
json.knowledge avatar.knowledge
json.gratitude avatar.gratitude
json.vigor avatar.vigor

json.specialization do
  if avatar.specialization
    json.partial! avatar.specialization, partial: 'api/specializations/specialization', as: :specialization
  else
    json.avatar_class
  end
end
