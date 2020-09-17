require_relative 'models'

def main
  building = Building.new(name: "澤田南ビル")
  company = Company.new(name: "SECOM")
  company.make_ad("someImage")
  puts company.request_ad_to(building)
end

main