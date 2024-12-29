class CreateApiV1Raports < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_raports, id: :uuid do |t|
      t.string :teachers_id, null: false
      t.string :subjects_id, null: false
      t.string :students_id, null: false
      t.string :semeters_id, null: false
      t.string :classroom_id, null: false

      t.timestamps
    end
  end
end
