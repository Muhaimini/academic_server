class CreateApiV1Semesters < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_semesters, id: :uuid do |t|
      t.string :value,  default: "1", null: false

      t.timestamps
    end
  end
end
