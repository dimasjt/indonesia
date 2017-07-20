module Indonesia
  def self.districts
    @_districts ||= begin
      data = CSV.open('lib/data/districts.csv')
      data.map { |r| { id: r[0].to_i, regency_id: r[1].to_i, name: r[2] } }
    end
  end
end
