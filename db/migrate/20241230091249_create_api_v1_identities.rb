class CreateApiV1Identities < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_identities, id: :uuid do |t|
      t.string :city, null: false
      t.string :province, null: false
      t.string :nationality, default: "WNI", null: false
      t.string :details

      t.timestamps
    end
  end
end
