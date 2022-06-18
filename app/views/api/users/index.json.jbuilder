json.set! :users do
  json.array! @users do |user|
    json.extract! user, :id, :email,introduction
    json.avatar rails_blob_url(user.avatar)
  end
end