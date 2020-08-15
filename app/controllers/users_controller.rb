class UsersController < ApplicationController
  def authenticate
    command = Authenticate.call(params.require(:username), params.require(:password))
    if command.success?
      render_success({ auth_token: command.result })
    else
      render_error(command.errors.full_messages.first, :bad_request)
    end
  end

  def authorize
    command = Authorize.call(request.headers)
    if command.success?
      response.set_header("Authenticated", command.result.id)
      render_no_content
    else
      render_error(command.errors.full_messages.first, :unauthorized)
    end
  end

  def register
    command = Register.call(params.require(:username), params.require(:password), params.require(:password_confirmation))
    if command.success?
      render_success({ auth_token: command.result })
    else
      render_error(command.errors.full_messages.first, :bad_request)
    end
  end
end
