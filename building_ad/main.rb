require_relative 'models'

def company_post_ad_to_building(company_name, building_name, ad_image)
  ad = Ad.new(owner: company_name, image: 'someimage')
  company = Company.new(name: company_name)
  building = Building.new(name: building_name)
  company.request_ad(company, ad)
end