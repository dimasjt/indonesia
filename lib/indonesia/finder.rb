module Indonesia

  def self.provinces
    @provinces ||= begin
      data = read_csv('provinces')
      data.map { |r| { id: r[0].to_i, name: r[1] } }
    end
  end

  def self.regencies
    @regencies ||= begin
      data = read_csv('regencies')
      data.map { |r| { id: r[0].to_i, province_id: r[1].to_i, name: r[2] } }
    end
  end

  def self.districts
    @districts ||= begin
      data = read_csv('districts')
      data.map { |r| { id: r[0].to_i, regency_id: r[1].to_i, name: r[2] } }
    end
  end

  def self.villages
    @villages ||= begin
      data = read_csv('villages')
      data.map { |r| { id: r[0].to_i, district_id: r[1].to_i, name: r[2] } }
    end
  end

end