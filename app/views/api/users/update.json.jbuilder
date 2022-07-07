json.extract! @user, :id, :email, :introduction
json.avatar rails_blob_url(@user.avatar)
json.token @jwt_token