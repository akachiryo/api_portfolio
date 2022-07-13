json.id(skill_type.id)
json.name(skill_type.name)

json.skills do
  json.array!(skill_type.skills) do |skill|
    if @current_user.id = skill.user_id
      json.id(skill.id)
      json.user_id(skill.user_id)
      json.name(skill.name)
      json.level(skill.level)
    end
  end
end
