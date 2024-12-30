class Api::V1::Student < ApplicationRecord
  include GeneratedNumber
  has_generated_number :number, prefix: "ST", digits: 5
end
