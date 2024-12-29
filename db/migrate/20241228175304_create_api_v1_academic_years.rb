class CreateApiV1AcademicYears < ActiveRecord::Migration[7.2]
  def change
    create_table :api_v1_academic_years, id: :uuid do |t|
      t.string :label, null: false
      t.string :desc
      t.timestamps
    end
  end
end
