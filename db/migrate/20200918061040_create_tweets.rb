class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text    :text, null: false
      t.integer :time_hour_id, null: false
      t.integer :time_minutes_id, null: false
      t.timestamps
    end
  end
end
