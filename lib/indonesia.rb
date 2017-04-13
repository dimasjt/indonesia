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

  def self.find(type, query)
    address = %w(province regency district)
    types = address + address.map(&:to_sym)

    if types.include? type
      # manual using pluralize
      type = type.to_s == 'regency' ? 'regencies' : "#{type}s"
      self.send(type).find { |t| t[:name].downcase == query.downcase }
    else
      nil
    end
  end
end
