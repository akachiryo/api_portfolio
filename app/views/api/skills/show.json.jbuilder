json.set! :skills do
  json.array! @skills do |skill|
    json.extract! skill, :id, :user_id, :skill_type_id, :name, :level
  end
end