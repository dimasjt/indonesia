module Indonesia
  def self.regencies(province_id = nil)
    @_regencies ||= begin
      csv_path = "#{File.expand_path('../../', __FILE__)}/data/regencies.csv"
      data = CSV.read(csv_path)
      data.map { |r| { id: r[0].to_i, province_id: r[1].to_i, name: r[2] } }
    end

    if province_id.nil?
      @_regencies
    else
      @_regencies.select { |r| r[:province_id] == province_id.to_i }
    end
  end
end
