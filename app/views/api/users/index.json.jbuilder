json.extract! @user, :id, :email, :introduction
json.image rails_blob_url(@user.avatar)
