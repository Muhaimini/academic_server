class ChangeTableApiV1 < ActiveRecord::Migration[7.2]
  def change
    # add_reference :api_v1_teacher_subjects, type: :uuid, null: false, foreign_key: { to_table: :api_v1_subjects }
  end
end
