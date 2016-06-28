class AddAccountToApartments < ActiveRecord::Migration
  def change
    add_reference :apartments, :account, index: true, foreign_key: true
  end
end
