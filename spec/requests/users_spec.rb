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