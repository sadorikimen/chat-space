require 'rails_helper'

describe MessagesController do
  let(:group) { create(:group) }
  let(:user) { create(:user) }

  describe '#index' do

    context 'log in' do
      before do
        login user
        get :index, params: { group_id: group.id }
      end
      
      ##
      it 'assigns @message' do
        expect(assigns(:message)).to be_a_new(Message)
      end

      ##
      it 'assigns @group' do
        expect(assigns(:group)).to eq group
      end

      ##
      it 'renders index' do
        expect(response).to render_template :index
      end

    end

    context 'not log in' do
      before do
        get :index, params: { group_id: group.id }
      end
      
      it 'redirects to new_user_session_path' do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe '#create' do
    let(:params) { { group_id: group.id, user_id: user.id, message: attributes_for(:message) } }

    context 'log in' do
      #この中にログインしている場合のテストをかく
      before do
        login user
      end

      context 'can save' do
        #この中にメッセージの保存に成功した時のテストをかく
      end
  
      context 'can not save' do
        #この中にメッセージの保存に失敗した時のテストをかく
      end
    end

    context 'not log in' do
      #この中にログインしていない場合のテストをかく
      before do
        get :create, params: params
      end
    end

    
  end



end