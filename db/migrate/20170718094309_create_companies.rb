class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :c_name
      t.string :c_location
      t.string :c_email
      t.string :c_password
      t.string :c_location
      t.integer :c_contact_number

      t.timestamps
    end
  end
end
