class CreateApiV1Periodes < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_periodes, id: :uuid do |t|
      t.string :label, null: false
      t.string :desc
      t.timestamps
    end
  end
end
