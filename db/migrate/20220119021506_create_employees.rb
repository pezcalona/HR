class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :telephone
      t.string :rut
      t.datetime :start_date
      t.string :status
      t.datetime :birthdate
      t.references :roles, null: false, foreign_key: true
      t.references :positions, null: false, foreign_key: true
      t.references :businesses, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
