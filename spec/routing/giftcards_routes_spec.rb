require 'rails_helper'

describe 'routes for GiftcardsController' do
  describe 'GET /giftcards' do
    it 'routes to giftcards#index page' do
      expect(
          get: '/giftcards'
      ).to route_to(controller: 'giftcards', action: 'index')
    end
  end

  describe 'GET giftcards/1' do
    it 'routes to giftcards#show page' do
      expect(
          get: '/giftcards/1'
      ).to route_to(controller: 'giftcards', action: 'show', id: '1')
    end
  end

  describe 'GET giftcards/new' do
    it 'routes to giftcards#new page' do
      expect(
          get: '/giftcards/new'
      ).to route_to(controller: 'giftcards', action: 'new')
    end
  end

  describe 'POST giftcards' do
    it 'routes to giftcards#create' do
      expect(
          post: '/giftcards'
      ).to route_to(controller: 'giftcards', action: 'create')
    end
  end
end