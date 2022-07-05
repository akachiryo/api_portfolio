json.set! :skill_types do
  json.array! @skill_types do |skill_type|
    json.partial!(skill_type)
  end
end