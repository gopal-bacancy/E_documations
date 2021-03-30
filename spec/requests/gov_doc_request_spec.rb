require 'rails_helper'

RSpec.describe "Gdocs", type: :request do

    let(:user) { create(:user) }
    let(:GovDoc) { create(:GovDoc) }
    include Warden::Test::Helpers
    before do
        login_as(create(:user), scope: :user)
    end

    describe 'GET #new' do
        it 'New Document' do
          get '/gov_docs/new'
          expect(response).to have_http_status(:success)
        end
    end
    
     describe 'GET #index' do
         it 'new edu' do
             get '/gov_docs'
             expect(response).to have_http_status(:success) 
    
         end
     end

     describe 'room_management#create' do
	    context 'with valid params' do
	      let(:gov_doc) do 	
          post '/gov_docs', params: {gov_doc: attributes_for(:GovDoc)}
	      end
        it { expect {gov_doc}.to change(GovDoc, :count).by(1) }
	    end
	  end

      describe "PUT 'update/:id'" do
        it "allows to be updated" do
          oc=create(:GovDoc)
         # put :update, :id => EduDoc.ids, :EduDoc => @EduDoc.attributes = { :documenttype => "new title", :documentname => "new content",:documentid => "new content" }
         put '/gov_docs/'+oc.id.to_s, params:{gov_doc: attributes_for(:GovDoc)}
         # response.should be_successful
        end
      end
      
      describe "DELETE 'delete/:id'" do
        it "allows to be deleted" do
          GovDoc=create(:GovDoc)
         # put :update, :id => EduDoc.ids, :EduDoc => @EduDoc.attributes = { :documenttype => "new title", :documentname => "new content",:documentid => "new content" }
          delete '/gov_docs/'+GovDoc.id.to_s
          response.should be_successful
        end
      end
  
end