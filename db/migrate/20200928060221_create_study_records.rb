class CreateStudyRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :study_records do |t|
      t.float       :hour_time, null: false
      t.references  :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
