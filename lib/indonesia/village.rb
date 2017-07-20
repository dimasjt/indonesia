module Indonesia
  def self.villages
    @_villages ||= begin
      data = CSV.open('lib/data/villages.csv')
      data.map { |r| { id: r[0].to_i, district_id: r[1].to_i, name: r[2] } }
    end
  end
end
