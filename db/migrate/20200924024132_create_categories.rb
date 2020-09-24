class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string      :task, null: false
      t.references :user, null: false, forign_key: true
      
      t.timestamps
    end
  end
end
