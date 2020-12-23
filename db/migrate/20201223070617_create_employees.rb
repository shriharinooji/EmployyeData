class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.text :address
      t.string :email_id
      t.string :phone_number
      t.date :dob
      t.text :photo
    end
  end
end
