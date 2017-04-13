class Province < ActiveRecord::Base
  self.primary_key = 'code'

  has_many :regencies
end
