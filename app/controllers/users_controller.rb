class UsersController < ApplicationController
  before_action :find_user, only: [:dismiss_alert]

  def dismiss_alert
    @user.dismiss_alert
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
