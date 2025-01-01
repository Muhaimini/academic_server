class Api::V1::Teacher < ApplicationRecord
  include GeneratedNumber

  has_one :role, foreign_key: :user_id
  has_many :teacher_subject, foreign_key: :teachers_id
  has_generated_number :number, prefix: "TR", digits: 5

  def as_json(options = {})
    super(options).merge(
      role: role&.role,
      subjects: teacher_subject.as_json(except: [ :teachers_id ])
    )
  end
end
