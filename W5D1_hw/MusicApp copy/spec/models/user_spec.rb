require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) {User.new(email: 'potato@potato.com', password: 'yoyoyo1')}

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password) }
  end

  describe '#is_password' do
    it 'should check a users password is correct' do
      expect(user.is_password?('yoyoyo1')).to be true
    end
  end

  describe '#reset_session_token' do
    it 'resets the users session_token' do
      user.valid?
      old_session = user.session_token
      user.reset_session_token!
      expect(user.session_token).to_not eq(old_session)
    end
  end

  describe ".find_by_credentials" do
    before { user.save! }

    it "returns user given good credentials" do
      expect(User.find_by_credentials('potato@potato.com', 'yoyoyo1')).to eq(user)
    end
  end
end
