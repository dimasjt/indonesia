require 'csv'

require 'indonesia/finder'

module Indonesia

  def self.read_csv(file)
    file_path = File.join(File.dirname(__FILE__), 'data/', "#{file}.csv")
    CSV.read(file_path)
  end

end
