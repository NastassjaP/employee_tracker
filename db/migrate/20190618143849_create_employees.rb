class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.references :division, foreign_key: true
      t.timestamps
    end
  end
end
