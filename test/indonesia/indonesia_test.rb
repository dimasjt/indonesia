require 'test_helper'
describe Indonesia do
  describe '#provinces' do
    it "should return all provinces" do
      provinces = Indonesia.provinces
      assert_equal provinces.class.name, 'Array'
      assert_equal provinces.empty?, false
    end
  end

  describe '#regencies' do
    it "should return all regencies if args empty" do
      regencies = Indonesia.regencies
      assert_equal regencies.class.name, 'Array'
      assert_equal regencies.empty?, false
    end

    it "should return all regencies by province_id" do
      regencies = Indonesia.regencies(11)
      assert_equal regencies.first[:province_id], 11
    end

    it "should return empty array if province_id invalid" do
      assert_empty Indonesia.regencies(11111)
    end
  end

  describe '#districts' do
    it "should return all districts if args empty" do
      districts = Indonesia.districts
      assert_equal districts.class.name, 'Array'
      assert_equal districts.empty?, false
    end

    it "should return all districts by province_id" do
      assert_equal Indonesia.districts(1101).empty?, false
    end

    it "should return empty array if regency_id invalid" do
      assert_empty Indonesia.districts(10010200102102010)
    end
  end
end
