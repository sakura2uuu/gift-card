require 'rails_helper'

describe GiftcardsController do
  describe '#index' do
    it 'assigns all gift cards to @giftcards attribute' do
      giftcard1 = create(:giftcard)
      giftcard2 = create(:giftcard)

      get :index
      expect(assigns[:giftcards]).to match_array([giftcard1, giftcard2])
    end
  end

  describe '#show' do
    it 'searches for gift card based on id assigns user to @giftcard attribute' do
      giftcard = create(:giftcard)

      get :show, id: giftcard.id
      expect(assigns[:giftcard]).to eq giftcard
    end
  end

  describe '#new' do
    it 'assigns a gift card object to @giftcard and retrieves list of users' do
      user = create(:user)

      get :new
      expect(assigns[:giftcard]).to be_a Giftcard
      expect(assigns[:users]).to eq [user]
    end
  end

  describe '#create' do
    before do
      @user = create(:user)
    end

    it 'creates a gift card successfully and assign it to @giftcard if valid parameters are given' do
      expect {
        post :create, giftcard: {title: 'Test Title', message: 'Test\n Message', user_id: @user.id}
      }.to change{Giftcard.count}.by(1)

      expect(assigns[:giftcard]).to be_a Giftcard
    end

    it 'does not create a gift card, retrieves list of users and render :new template if invalid parameters are given' do
      expect {
        post :create, giftcard: {title: 'Test Title', message: 'Test\n Message'}
      }.not_to change{Giftcard.count}

      expect(assigns[:users]).to match_array(User.all)
      expect(response).to render_template(:new)
      expect(assigns[:giftcard]).to be_a Giftcard
    end
  end
end