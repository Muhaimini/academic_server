class CreateApiV1Classrooms < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_classrooms, id: :uuid do |t|
      t.string :teachers_id, null: false
      t.string :academic_years_id, null: false

      t.timestamps
    end
  end
end
