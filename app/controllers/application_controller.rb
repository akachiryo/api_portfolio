class ApplicationController < ActionController::API

  # protect_from_forgery with: :null_session
  class AuthenticationError < StandardError; end

  rescue_from ActiveRecord::RecordInvalid, with: :render_422
  rescue_from AuthenticationError, with: :not_authenticated

  def authenticate
    raise AuthenticationError unless current_user
  end

  def current_user
    # @current_user ||= Jwt::UserAuthenticator.call(request.headers)
    @current_user = User.find(4)
  end

  private

  def render_422(exception)
    render json: { error: { messages: exception.record.errors.full_messages } }, status: :unprocessable_entity
  end

  def not_authenticated
    render json: { error: { messages: ['please login'] } }, status: :unauthorized
  end
end
