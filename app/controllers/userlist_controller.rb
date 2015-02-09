class UserlistController < ApplicationController
  def index
  @user = UserDetail.all
  end
  def show
  	@user = UserDetail.find(params[:id])
  end
end
