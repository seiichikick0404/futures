class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text    :text, null: false
      t.references :user, null: false, foreign_key: true
      t.references :category, foreign_key: { on_delete: :nullify }
      t.timestamps
    end
  end
end
