require 'csv'
require_relative '../app/models/legislator'

class SunlightLegislatorsImporter
  def self.import(filename=File.dirname(__FILE__) + '/../db/data/legislators.csv')
    Legislator.transaction do
      CSV.foreach(File.open(filename), :headers => true, :header_converters => :symbol) do |legislator|
        hash = legislator.to_hash
          Legislator.create(hash)
      end
    end
  end
end

# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end
