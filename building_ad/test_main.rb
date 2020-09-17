require 'minitest/unit'
require 'minitest/autorun'
require_relative 'main'

class TestMain < MiniTest::Unit::TestCase
  def setup
    @building = Building.new(name: "澤田南ビル")
    @company = Company.new(name: "SECOM")
    @company.make_ad("someImage")
  end
  def test_main
    assert_equal @company.request_ad_to(@building), "澤田南ビルに広告を掲示しました"
  end
end