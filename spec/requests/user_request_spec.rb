require 'rails_helper'

RSpec.describe "Gdocs", type: :request do
    describe 'GET #new' do
        it 'New Document' do
          get '/users/sign_in'
          expect(response).to have_http_status(:success)
        end
    end
end