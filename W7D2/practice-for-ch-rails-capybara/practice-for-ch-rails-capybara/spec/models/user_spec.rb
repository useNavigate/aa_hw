require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    subject { build(:user)}
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(length: { minimum: 6}) }
end
