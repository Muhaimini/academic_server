class CreateApiV1SemesterRecords < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_semester_records, id: :uuid do |t|
      t.string :records_id, null: false
      t.string :semesters_id, null: false

      t.timestamps
    end
  end
end
