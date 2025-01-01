class Api::V1::Student < ApplicationRecord
  include GeneratedNumber
  has_one :role, class_name: "Api::V1::Role", foreign_key: :user_id
  has_generated_number :number, prefix: "ST", digits: 5

  def as_json(options = {})
    super(options).merge(role: role&.role)
  end
end
