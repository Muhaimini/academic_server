class Api::V1::Subject < ApplicationRecord
  belongs_to :teacher_subject, foreign_key: :subjects_id
end
