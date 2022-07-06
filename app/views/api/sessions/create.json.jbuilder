json.extract! @current_user, :id, :email, :introduction
json.avatar rails_blob_url(@current_user.avatar)
json.token @jwt_token