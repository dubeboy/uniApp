class AddCompanyNumberToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :c_number, :string
  end
end
