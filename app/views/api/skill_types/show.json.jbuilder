json.set! :skill_types do
  json.array! @skill_types do |skill_type|
    # json.partial!(skill_type)
    json.id(skill_type.id)
    json.name(skill_type.name)

      json.skills do
        json.array!(skill_type.skills) do |skill|
          if @current_user_id == skill.user_id
            json.id(skill.id)
            json.user_id(skill.user_id)
            json.name(skill.name)
            json.level(skill.level)
          end
        end
      end
  end
end