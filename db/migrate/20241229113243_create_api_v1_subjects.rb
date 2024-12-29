class CreateApiV1Subjects < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_subjects, id: :uuid do |t|
      t.string :name, null: false
      t.string :academic_years_id, null: false
      t.integer :min_score, default: 0
      t.string :desc

      t.timestamps
    end
  end
end
