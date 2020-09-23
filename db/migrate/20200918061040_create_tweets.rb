class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text    :text, null: false
      t.integer :time_hour_id, null: false
      t.integer :time_minutes_id, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
