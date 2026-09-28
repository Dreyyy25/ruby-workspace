class ChangeStudentsDojoForeignKey < ActiveRecord::Migration[8.1]
  def change
    
    remove_foreign_key :students, :dojos 
    add_foreign_key :students, :dojo_branches, column: :dojo_id
  end
end
