require 'spec_helper'

describe UsersHelper do
  before do
    @user = User.new(name: "Example User", email: "user@example.com", 
    password: "foobar", password_confirmation: "foobar")
  end
  
  describe "gravatar_for" do
    it "should use default size of 50" do
      gravatar_for(@user).should =~ /50/
    end

    it "should use the given size" do
      gravatar_for(@user, size: 20).should =~ /20/
    end
  end
end