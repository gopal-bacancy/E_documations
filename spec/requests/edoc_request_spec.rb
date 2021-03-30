require 'rails_helper'

RSpec.describe "Edocs", type: :request do

    let(:user) { create(:user) }
    let(:EduDoc) { create(:EduDoc) }
    include Warden::Test::Helpers
    before do
        login_as(create(:user), scope: :user)
    end

    describe 'GET #new' do
        it 'New Student' do
          get '/edu_docs/new'
          expect(response).to have_http_status(:success)
        end
    end
    
     describe 'GET #index' do
         it 'new edu' do
            
            
             get '/edu_docs'
             expect(response).to have_http_status(:success) 
    
         end
     end

    #  describe 'POST #create' do
    #   it 'Create book' do
    #     post '/edu_docs', params: {edu_doc: attributes_for(:EduDoc)}
    #     #expect { EduDoc }.to change(EduDoc, :count).by(0)
        
    #   end
    # end
    describe 'room_management#create' do
	    context 'with valid params' do
	      let(:edu_doc) do 	
          post '/edu_docs', params: {edu_doc: attributes_for(:EduDoc)}
	      end
        it { expect {edu_doc}.to change(EduDoc, :count).by(1) }
	    end
	  end

    describe 'room_management#create' do
	    context 'with valid params' do
	      let(:edu_doc) do 	
          user=create(:user)
          patch '/edu_docs/'+user.id.to_s, params:{edu_doc: attributes_for(:EduDoc)}
	      end
        #it {# expect(response).to redirect_to edu_docs_path}
      end
	  end


  #   describe "PUT#update" do
  #     context 'with valid params' do
  #       let(:edu_doc) do 
  #         { :documentid => '123', :documentname => 'new content',:documenttype=>'gov' }
  #       end
  #       before(:each) do
  # #        put 'edu_docs', :id => @edu_doc.id, :EduDoc => edu_doc
  #         put '/edu_docs/'+user.id.to_s, params: {edu_doc: attributes_for(:EduDoc)}
  #         @edu_doc.reload
  #       end
  #     end
  #   end

    describe "PUT 'update/:id'" do
      it "allows to be updated" do
        oc=create(:EduDoc)
       # put :update, :id => EduDoc.ids, :EduDoc => @EduDoc.attributes = { :documenttype => "new title", :documentname => "new content",:documentid => "new content" }
       put '/edu_docs/'+oc.id.to_s, params:{edu_doc: attributes_for(:EduDoc)}
       # response.should be_successful
      end
    end

    describe "DELETE 'delete/:id'" do
      it "allows to be deleted" do
        EduDoc=create(:EduDoc)
       # put :update, :id => EduDoc.ids, :EduDoc => @EduDoc.attributes = { :documenttype => "new title", :documentname => "new content",:documentid => "new content" }
        delete '/edu_docs/'+EduDoc.id.to_s
        response.should be_successful
      end
    end
end