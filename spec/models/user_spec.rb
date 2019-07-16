require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    user1 = User.new(name: "Any name", email: "test@test.com", password: "password", password_confirmation:"password")

    it "is valid with attributes" do 
      user1 = user1 = User.new(name: "Any name", email: "test@test.com", password: "password", password_confirmation:"password")
      expect(user1).to be_valid
    end

    it "is not valid where password_confirmation is blank/nil" do
      user1 = User.new(name: "Any name", email: "test@test.com", password: "password", password_confirmation:"password")
      user1.password_confirmation = nil
      expect(user1).to_not be_valid
    end

    it "is not valid where password is blank/nil" do
      user1 = User.new(name: "Any name", email: "test@test.com", password: "password", password_confirmation:"password")
      user1.password = nil
      expect(user1).to_not be_valid
    end

    it "is not valid where password & password_confirmation do not match" do
      user1= User.new(name: "Any name", email: "test@test.com", password: "password", password_confirmation:"password")
      user1.password = "anything"
      expect(user1).to_not be_valid
    end

    it "is not valid where emails are not case-sensitive" do
      user1 = User.create(name: "Any name", email: "test@test.com", password: "password", password_confirmation:"password")
      user2 = User.create(name: "Any name", email: "TEST@TEST.COM", password: "password", password_confirmation:"password")
    end

    it "is not valid where email does not exist" do
      user1 = User.new(name: "Any name", password: "password", password_confirmation:"password")
      expect(user1).to_not be_valid
    end

    it "is not valid where password is fewer than 5 characters" do
      user1 = User.new(name: "Any name", email: "test@test.com", password: "word", password_confirmation:"password")
    end
  end
  
    






end
