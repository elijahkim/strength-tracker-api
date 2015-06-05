class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers

  def current_user
    User.find_by(key: params[:key])
  end
end
