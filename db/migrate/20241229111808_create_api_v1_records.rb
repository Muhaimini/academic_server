class CreateApiV1Records < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_records, id: :uuid do |t|
      t.string :classroom_members_id, null: false
      t.string :student_id, null: false

      t.timestamps
    end
  end
end
