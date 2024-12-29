class CreateApiV1StudentAdministrations < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_student_administrations, id: :uuid do |t|
      t.string :students_id, null: false
      t.string :periodes_id, null: false
      t.integer :total_fees, default: 0, null: false

      t.timestamps
    end
  end
end
