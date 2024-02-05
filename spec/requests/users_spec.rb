require 'rails_helper'
RSpec.describe "Users", type: :request do
  describe 'GET index' do
    let(:user) { create(:user) }
  
      context 'ユーザーが5件存在する場合' do
        let!(:users) { create_list(:user, 4) + [user] }
  
        before do
          post login_path, params: { session: { email: user.email, password: user.password } }
          get users_path, as: :json
        end


      it "200 httpレスポンスを返す" do
        expect(response.status).to eq 200
      end


      it "ユーザーが5件を返す" do
        json_response = JSON.parse(response.body)
        expect(json_response.length).to eq(5)
      end


      it "5件のユーザーを正確に返す" do
        json_response = JSON.parse(response.body)
        expected_users = users.map do |user|
          {
            'id' => user.id,
            'name' => user.name,
            'email' => user.email,
            'created_at' => user.created_at.as_json,
            'updated_at' => user.updated_at.as_json,
            'password_digest' => user.password_digest,
            'remember_digest' => user.remember_digest,
            'admin' => user.admin,
            'department' => user.department,
            'basic_time' => user.basic_time.as_json,
            'work_time' => user.work_time.as_json
          }
        end
        expect(json_response).to match_array(expected_users)
      end


      # ページネーションに関するテスト
      context 'ページネーションを含む場合' do
        let!(:users) { create_list(:user, 34) + [user] }
  
        it '1ページ目に30件のユーザを返す' do
          get users_path, params: { page: 1 }, as: :json
          json_response = JSON.parse(response.body)
          expect(json_response.length).to eq(30)
        end
  
        it '2ページ目に5件のユーザーを返す' do
          get users_path, params: { page: 2 }, as: :json
          json_response = JSON.parse(response.body)
          expect(json_response.length).to eq(5)
        end
      end
    end
  end
  
  describe 'GET show' do
    let(:user) { create(:user) }
  
    before do
      get user_path(user), as: :json
    end
  
    context '1件のユーザーが存在する場合' do
      it "200 HTTPレスポンスを返す" do
        expect(response.status).to eq 200
      end


      it '指定されたユーザーを返す' do
        json_response = JSON.parse(response.body)
        expected_data = {
            'id' => user.id,
            'name' => user.name,
            'email' => user.email,
            'created_at' => user.created_at.as_json,
            'updated_at' => user.updated_at.as_json,
            'password_digest' => user.password_digest,
            'remember_digest' => user.remember_digest,
            'admin' => user.admin,
            'department' => user.department,
            'basic_time' => user.basic_time.as_json,
            'work_time' => user.work_time.as_json
          }
        expect(json_response).to eq(expected_data)
      end
    end
  end
end
