class Regency < ActiveRecord::Base
  self.primary_key = 'code'

  belongs_to :province, foreign_key: :province_code
  has_many :districts
end
