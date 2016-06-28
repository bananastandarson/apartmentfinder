require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before(:each) do
    assign(:account, Account.new(
      :name => "MyString",
      :password => "MyString",
      :account_type => "MyString"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_password[name=?]", "account[password]"

      assert_select "input#account_account_type[name=?]", "account[account_type]"
    end
  end
end
