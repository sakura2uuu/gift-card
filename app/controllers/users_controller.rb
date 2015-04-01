class UsersController < ApplicationController
  def index
    # This method is a stub. You should replace everything in here with your own implementation
    #@users = [create_fake_user]
    @users = User.all
  end

  def show
    # This method is a stub. You should replace everything in here with your own implementation
    #@user = create_fake_user
    @user = User.find(params[:id])
  end

  def new
    # This method is a stub. You should replace everything in here with your own implementation
    #@user = create_fake_user
    @user = User.new
  end

  def create
    # This method is a stub. You should replace everything in here with your own implementation
    # You may need to use strong parameters to create a User, please read:
    # http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters
    #flash[:notice] = 'User successfully created!'
    #redirect_to action: :index
    @user = User.new(user_params)
    
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    # This method is a stub. Used for strong params. Complete your implementation below
    params.require(:user).permit(:name, :email, :gender)
  end

  def create_fake_user
    user = Object.new
    def user.id() 1 end
    def user.name() 'Fake name' end
    def user.email() 'fake@email.com' end
    def user.gender() 'Some Invalid Gender' end
    user
  end
end