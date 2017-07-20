module Indonesia
  def self.regencies(province_id = nil)
    @_regencies ||= begin
      data = CSV.read('lib/data/regencies.csv')
      data.map { |r| { id: r[0].to_i, province_id: r[1].to_i, name: r[2] } }
    end

    if province_id.nil?
      @_regencies
    else
      @_regencies.select { |r| r[:province_id] == province_id.to_i }
    end
  end
end
