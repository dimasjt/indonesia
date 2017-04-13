require 'test_helper'

class IndonesiaGeneratorTest < Rails::Generators::TestCase
  tests Indonesia::Generators::InstallGenerator

  destination File.expand_path('../../tmp', __FILE__)
  setup :prepare_destination
  teardown { rm_rf(destination_root) }

  test 'generate model files' do
    run_generator
    assert_file 'app/models/province.rb'
    assert_file 'app/models/regency.rb'
    assert_file 'app/models/district.rb'
  end

  test 'generate migration files' do
    run_generator
    assert_migration 'db/migrate/create_provinces.rb'
    assert_migration 'db/migrate/create_regencies.rb'
    assert_migration 'db/migrate/create_districts.rb'
    assert_migration 'db/migrate/insert_indonesia_address.rb'
  end
end
