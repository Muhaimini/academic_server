class CreateApiV1Teachers < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_teachers, id: :uuid do |t|
      t.string :number, null: false
      t.string :name, null: false
      t.string :identity_id, null: false
      t.boolean :is_active, default: true, null: false
      t.date :inactive_date

      t.timestamps
    end
  end
end
