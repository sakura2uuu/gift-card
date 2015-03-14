class GiftcardsController < ApplicationController
  def index
    # This method is a stub. You should replace everything in here with your own implementation
    @giftcards = []
  end

  def show
    # This method is a stub. You should replace everything in here with your own implementation
    @giftcard = Object.new
  end

  def new
    # This method is a stub. You should replace everything in here with your own implementation
    @giftcard = Object.new
    @users = []
  end

  def create
    # This method is a stub. You should replace everything in here with your own implementation
    # You may need to use strong parameters to create a User, please read:
    # http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters
    flash[:notice] = 'Gift Card successfully created!'
    redirect_to action: :index
  end

  private

  def giftcard_params
    # This method is a stub. Used for strong params. Complete your implementation below
  end
end