class Api::V1::TeacherSubject < ApplicationRecord
  belongs_to :teacher_subject, foreign_key: :teachers_id, optional: true
  belongs_to :subject, foreign_key: :subjects_id

  def as_json(options = {})
    super(options)
    .except("subjects_id")
    .merge(subject: subject)
  end
end
