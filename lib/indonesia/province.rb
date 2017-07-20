module Indonesia
  def self.provinces
    @_provinces ||= begin
      data = CSV.read('lib/data/provinces.csv')
      data.map { |r| { id: r[0].to_i, name: r[1] } }
    end
  end
end
