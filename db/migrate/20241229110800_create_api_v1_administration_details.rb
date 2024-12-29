class CreateApiV1AdministrationDetails < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_administration_details, id: :uuid do |t|
      t.string :students_id, null: false
      t.string :student_administrations_id
      t.string :label
      t.string :desc
      t.integer :fee, default: 0

      t.timestamps
    end
  end
end
