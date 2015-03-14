require 'rails_helper'

describe UsersController do
  describe '#index' do
    it 'assigns all users to @users attribute' do
      user1 = create(:user)
      user2 = create(:user)

      get :index
      expect(assigns[:users]).to match_array([user1, user2])
    end
  end

  describe '#show' do
    it 'searches for user based on id assigns user to @user attribute' do
      user = create(:user)

      get :show, id: user.id
      expect(assigns[:user]).to eq user
    end
  end

  describe '#new' do
    it 'assigns a user object to @user' do
      get :new
      expect(assigns[:user]).to be_a User
    end
  end

  describe '#create' do
    it 'creates a user successfully and assign it to @user if valid parameters are given' do
      expect {
        post :create, user: {name: 'Test Name', email: 'email@test.com', gender: 'Female'}
      }.to change{User.count}.by(1)

      expect(assigns[:user]).to be_a User
    end

    it 'does not create a user and render :new template if invalid parameters are given' do
      expect {
        post :create, user: {name: 'Test Name', gender: 'Female'}
      }.not_to change{User.count}

      expect(response).to render_template(:new)
      expect(assigns[:user]).to be_a User
    end
  end
end