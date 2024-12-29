class CreateApiV1Students < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_students, id: :uuid do |t|
      t.string :number, null: false
      t.string :name, null: false
      t.string :identity_id, null: false
      t.string :periodes_id, null: false
      t.string :semesters_id, null: false
      t.boolean :is_active, default: true, null: false
      t.date :inactive_date

      t.timestamps
    end
  end
end
