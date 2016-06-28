require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :name => "MyString",
      :password => "MyString",
      :account_type => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_password[name=?]", "account[password]"

      assert_select "input#account_account_type[name=?]", "account[account_type]"
    end
  end
end
