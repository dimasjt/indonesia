require 'indonesia/version'
require 'indonesia/province'
require 'indonesia/regency'
require 'indonesia/district'

module Indonesia
  def self.options_for_select(type = :province, parent_id = nil)
    case type
    when :province
      provinces.map { |province| [province[:name], province[:id]] }
    when :regency
      regencies(parent_id).map { |regency| [regency[:name], regency[:id]] }
    when :district
      districts(parent_id).map { |district| [district[:name], district[:id]] }
    else
      []
    end
  end
end
