class Building
  attr_accessor :name, :ads
  def initialize(name:, ads: [])
    @name = name
    @ads = ads
  end
  def check_ad(ad)
    return unless ad.owner || ad.image
    self.put_ad(ad)
  end
  def put_ad(ad)
    self.ads << ad
    return "#{self.name}に広告を掲示しました"
  end
end

class Ad
  attr_accessor :image, :owner
  def initialize(image:, owner:)
    @image = image
    @owner = owner
  end
end

class Company
  attr_accessor :name
  def initialize(name:)
    @name = name
  end
  def make_ad(image)
    @ad = Ad.new(image: image, owner: self.name)
  end
  def request_ad_to(building)
    return unless @ad
    building.check_ad(@ad)
  end
end
