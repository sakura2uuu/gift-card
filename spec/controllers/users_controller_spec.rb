require 'rails_helper'

describe UsersController do
  describe '#index' do
    it 'assigns users to @users attribute' do
      user1 = create(:user)
      user2 =create(:user)
      get :index
      expect(assigns[:users]).to match_array([user1, user2])
    end
  end
end