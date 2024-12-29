class CreateApiV1ClassroomMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_classroom_members, id: :uuid do |t|
      t.string :classrooms_id, null: false
      t.string :student_id, null: false

      t.timestamps
    end
  end
end
