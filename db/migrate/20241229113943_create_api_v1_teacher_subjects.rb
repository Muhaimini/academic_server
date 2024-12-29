class CreateApiV1TeacherSubjects < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_teacher_subjects, id: :uuid do |t|
      t.string :teachers_id, null: false
      t.string :subjects_id, null: false

      t.timestamps
    end
  end
end
