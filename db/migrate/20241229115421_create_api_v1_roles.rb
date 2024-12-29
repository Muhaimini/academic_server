class CreateApiV1Roles < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_roles, id: :uuid do |t|
      t.string :user_id, null: false
      t.string :role, null: false

      t.timestamps
    end
  end
end
