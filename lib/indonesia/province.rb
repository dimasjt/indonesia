module Indonesia
  def self.provinces
    @_provinces ||= begin
      csv_path = "#{File.expand_path('../../', __FILE__)}/data/provinces.csv"
      data = CSV.read(csv_path)
      data.map { |r| { id: r[0].to_i, name: r[1] } }
    end
  end
end
