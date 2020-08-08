class UsersController < ApplicationController
  def authenticate
    command = Authenticate.call(params.require(:username), params.require(:password))
    if command.success?
      render_success({ auth_token: command.result })
    else
      render_error(command.errors.full_messages.first, :bad_request)
    end
  end

  def authorized
    command = Authorized.call(params.require(:auth_token))
    if command.success?
      render_success({ username: command.result.username })
    else
      render_error(command.errors.full_messages.first, :unauthorized)
    end
  end
end
