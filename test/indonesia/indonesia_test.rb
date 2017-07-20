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

    it 'should return all regencies by province_id' do
      regencies = Indonesia.regencies(11)
      assert_equal regencies.first[:province_id], 11
    end

    it 'should return empty array if province_id invalid' do
      assert_empty Indonesia.regencies(11111)
    end
  end

  describe '#districts' do
    it 'should return all districts if args empty' do
      districts = Indonesia.districts
      assert_equal districts.class.name, 'Array'
      assert_equal districts.empty?, false
    end

    it 'should return all districts by province_id' do
      assert_equal Indonesia.districts(1101).empty?, false
    end

    it 'should return empty array if regency_id invalid' do
      assert_empty Indonesia.districts(10010200102102010)
    end
  end

  describe '#villages' do
    it 'should return all villages if no args' do
      villages = Indonesia.villages
      assert_equal villages.class.name, 'Array'
      assert_equal villages.empty?, false
    end

    it 'should return all villages by district id' do
      assert_equal Indonesia.villages(1101010).empty?, false
    end

    it 'should return empty' do
      assert_empty Indonesia.villages(12912000012)
    end
  end

  describe '#options_for_select' do
    it 'should return array of key and value for :province' do
      provinces = Indonesia.provinces
      options = Indonesia.options_for_select(:province)

      assert_value_key(provinces, options)
    end

    it 'should return array of key and value for :regency' do
      regencies = Indonesia.regencies
      options = Indonesia.options_for_select(:regency)

      assert_value_key(regencies, options)
    end

    it 'should return array of key and value for :district' do
      districts = Indonesia.districts
      options = Indonesia.options_for_select(:district)

      assert_value_key(districts, options)
    end

    it 'should return empty array if invalid argument' do
      options = Indonesia.options_for_select(:invalid)
      assert_empty options
    end

    def assert_value_key(data, options)
      assert_equal data[0][:name], options[0][0]
      assert_equal data[0][:id], options[0][1]
    end
  end

  describe '#find' do
    it 'should return province by name' do
      province = Indonesia.find(:province, 'jawa barat')
      assert_equal province[:name], 'JAWA BARAT'
    end

    it 'should return regency by name' do
      regency = Indonesia.find(:regency, 'kota cimahi')
      assert_equal regency[:name], 'KOTA CIMAHI'
    end

    it 'should return district by name' do
      district = Indonesia.find(:district, 'meukek')
      assert_equal district[:name], 'MEUKEK'
    end

    %w(province regency district).each do |type|
      it 'should return nil if name invalid' do
        data = Indonesia.find(type, 'invalid name')
        assert_nil data
      end
    end
  end
end
