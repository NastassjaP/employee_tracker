class AddProjectIdToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :project, index: true
  end
end
