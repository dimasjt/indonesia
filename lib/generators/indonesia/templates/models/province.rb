class Province < ActiveRecord::Base
  self.primary_key = 'code'

  has_many :regencies, foreign_key: :province_code
  has_many :districts, through: :regencies
end
