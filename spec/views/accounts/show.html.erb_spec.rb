require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :name => "Name",
      :password => "Password",
      :account_type => "Account Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Account Type/)
  end
end
