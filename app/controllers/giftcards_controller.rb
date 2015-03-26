class GiftcardsController < ApplicationController
  def index
    # This method is a stub. You should replace everything in here with your own implementation
    #@giftcards = []
    @giftcards = Giftcard.all
  end

  def show
    # This method is a stub. You should replace everything in here with your own implementation
    #@giftcard = Object.new
    @giftcard = Giftcard.find(params[:id])
  end

  def new
    # This method is a stub. You should replace everything in here with your own implementation
    #@giftcard = Object.new
    #@users = []
    @giftcard = Giftcard.new
    @users = User.all
  end

  def create
    # This method is a stub. You should replace everything in here with your own implementation
    # You may need to use strong parameters to create a User, please read:
    # http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters
    #flash[:notice] = 'Gift Card successfully created!'
    #redirect_to action: :index
    @giftcard = Giftcard.new(giftcard_params)
    
    if @giftcard.save
      redirect_to @giftcard
    else
      @users = User.all
      render 'new'
    end
  end

  private

  def giftcard_params
    # This method is a stub. Used for strong params. Complete your implementation below
    params.require(:giftcard).permit(:title, :message, :user_id)
  end
end