module Indonesia
  def self.districts(regency_id = nil)
    @_districts ||= begin
      data = CSV.read('lib/data/districts.csv')
      data.map { |r| { id: r[0].to_i, regency_id: r[1].to_i, name: r[2] } }
    end

    if regency_id.nil?
      @_districts
    else
      @_districts.select { |d| d[:regency_id] == regency_id.to_i }
    end
  end
end
