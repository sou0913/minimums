class Building
  attr_reader :name, :ads
  def initilize(name:, ads: [])
    @name = name
    @ads = ads
  end

  def display_ad(ad)
    return false unless check_ad(ad)
    put_ad(ad)
    true
  end

  private

  def check_ad(ad)
    ad.company_name != nil && ad.image != nil
  end

  def put_ad(ad)
    ads << ad
  end
end

class Company
  attr_reader :name
  def initialize(name:, memo: [])
    @name = name
    @memo = memo
  end

  def request_ad(media, ad)
    write_memo(media.display_ad(ad), media.name)
  end

  private

  def write_memo(success, media_name)
    if success
      memo << { media_name => '掲載成功' }
    else
      memo << { media_name => '掲載失敗' }
    end
  end
end

class Ad
  attr_reader :owner, :image
  def initialize(owner:, image:)
    @owner = owner
    @image = image
  end
end
