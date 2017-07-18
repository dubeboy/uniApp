class AddEncriptionToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :password_salt, :string
    add_column :companies, :password_hash, :string
  end
end
