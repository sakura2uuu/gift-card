require 'rails_helper'

describe 'routes for UsersController' do
  describe 'GET /users' do
    it 'routes to users#index page' do
      expect(
          get: '/users'
      ).to route_to(controller: 'users', action: 'index')
    end
  end

  describe 'GET users/1' do
    it 'routes to users#show page' do
      expect(
          get: '/users/1'
      ).to route_to(controller: 'users', action: 'show', id: '1')
    end
  end

  describe 'GET users/new' do
    it 'routes to users#new page' do
      expect(
          get: '/users/new'
      ).to route_to(controller: 'users', action: 'new')
    end
  end

  describe 'POST users' do
    it 'routes to users#create' do
      expect(
          post: '/users'
      ).to route_to(controller: 'users', action: 'create')
    end
  end
end