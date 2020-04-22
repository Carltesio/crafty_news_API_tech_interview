require 'rails_helper'

RSpec.describe 'GET /api/articles/:id', type: :request do
    let!(:article) { create(:article) }

    let!(:user) { create(:user) }
    let!(:user_credentials) { user.create_new_auth_token}
    let(:user_headers) { { HTTP_ACCEPT: "application/json" }.merge!(user_credentials) }
  
    describe 'successfully adds a comment' do
      before do
        get "/api/comments"
      end

    #   let!(:comment) { create(:comment)}

  
      it 'adds a comment to an article' do
        binding.pry
        expect(response_json["message"]).to eq "you added a comment"
      end
    end
  end