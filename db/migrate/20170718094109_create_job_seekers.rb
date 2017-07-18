class CreateJobSeekers < ActiveRecord::Migration[5.1]
  def change
    create_table :job_seekers do |t|
      t.string :j_email
      t.string :j_username
      t.string :j_firstname
      t.string :j_lastname
      t.string :j_password

      t.timestamps
    end
  end
end
