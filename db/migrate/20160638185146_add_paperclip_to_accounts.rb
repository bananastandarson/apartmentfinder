class AddPaperclipToAccounts < ActiveRecord::Migration
  def change
    add_attachment :accounts, :image
  end
end
