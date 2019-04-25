require 'test_helper'

describe Indonesia do
  describe '#provinces' do
    it 'should return all provinces' do
      provinces = Indonesia.provinces
      assert_equal provinces.class.name, 'Array'
      assert_equal provinces.empty?, false
    end
  end

  describe '#regencies' do
    it 'should return all regencies if args empty' do
      regencies = Indonesia.regencies
      assert_equal regencies.class.name, 'Array'
      assert_equal regencies.empty?, false
    end
  end

  describe '#districts' do
    it 'should return all districts if args empty' do
      districts = Indonesia.districts
      assert_equal districts.class.name, 'Array'
      assert_equal districts.empty?, false
    end
  end

  describe '#villages' do
    it 'should return all villages if no args' do
      villages = Indonesia.villages
      assert_equal villages.class.name, 'Array'
      assert_equal villages.empty?, false
    end
  end

end
