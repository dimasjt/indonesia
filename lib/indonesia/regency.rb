module Indonesia
  def self.regencies
    @_regencies ||= begin
      data = CSV.read('lib/data/regencies.csv')
      data.map { |r| { id: r[0].to_i, province_id: r[1].to_i, name: r[2] } }
    end
  end
end
