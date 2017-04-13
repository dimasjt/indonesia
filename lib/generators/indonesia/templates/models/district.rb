class District < ActiveRecord::Base
  self.primary_key = 'code'

  belongs_to :regency, foreign_key: :regency_code

  delegate :province, to: :regency
end
