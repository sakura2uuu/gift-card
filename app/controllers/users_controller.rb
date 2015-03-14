class UsersController < ApplicationController
  def index
    # This method is a stub. You should replace everything in here with your own implementation
    @users = [create_fake_user]
  end

  def show
    # This method is a stub. You should replace everything in here with your own implementation
    @user = create_fake_user
  end

  def new
    # This method is a stub. You should replace everything in here with your own implementation
    @user = create_fake_user
  end

  def create
    # This method is a stub. You should replace everything in here with your own implementation
    flash[:notice] = 'User successfully created!'
    redirect_to action: :index
  end

  private

  def create_fake_user
    user = Object.new
    def user.name() 'Fake name' end
    def user.email() 'fake@email.com' end
    def user.gender() 'Some Invalid Gender' end
    user
  end
end