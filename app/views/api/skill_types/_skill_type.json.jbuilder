json.id(skill_type.id)
json.name(skill_type.name)

json.skills do
  json.array!(skill_type.skills) do |skill|
    json.partical!(skill)
  end
end