require_relative 'main'

describe '会社がビルに広告を掲示する' do
  before do
    company_post_ad_to_building('SECOM', '澤田南ビル', 'someImage.jpg')
  end
  context '掲示してもらえた場合' do
    it 'ビルに広告が掲示される'
    it '会社に成功の記録が残る'
  end
  context '掲示してもらえなかった場合' do
    it '会社に失敗の記録が残る'
  end
end