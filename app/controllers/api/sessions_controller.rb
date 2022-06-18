class Api::SessionsController < ApplicationController
  include JwtAuthenticator

  def create
    # ログインIDを元にユーザーを取得
    @current_user = User.find_by(email: session_params[:email])
    # パスワードによる認証
    
    if @current_user&.authenticate(session_params[:password])
      # jwtの発行
      @jwt_token = encode(@current_user.id)
      # レスポンスヘッダーにトークンを設定
      response.headers['X-Authentication-Token'] = @jwt_token
      # 任意のレスポンスを返す
      # render json: @current_user.as_json.deep_merge(token: jwt_token )
      # render json: @current_user, status: :created, location: @current_user
    else
      render json: { error: { messages: ['mistake emal or password'] } }, status: :unauthorized 
    end
  end

  def session_params
    params.require(:session).permit(:email, :password)
  end

end
