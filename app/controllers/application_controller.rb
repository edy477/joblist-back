class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true, with: :exception, unless: -> { request.format.json? }
  #  protect_from_forgery unless: -> { request.format.json? }
  # protect_from_forgery with: :null_session
end
