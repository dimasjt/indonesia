require 'rails/generators/base'
require 'rails/generators/migration'
require 'rails/generators/active_record'

module Indonesia
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      desc 'Generate migrations and models for indonesia addresses'

      source_root File.expand_path('../templates', __FILE__)

      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def create_model
        template 'models/province.rb', File.join('app/models', 'province.rb')
        template 'models/regency.rb', File.join('app/models', 'regency.rb')
        template 'models/district.rb', File.join('app/models', 'district.rb')
      end

      def create_indonesia_migration
        migration_template 'migrations/province.rb', 'db/migrate/create_provinces.rb', migration_version: migration_version
        migration_template 'migrations/regency.rb', 'db/migrate/create_regencies.rb', migration_version: migration_version
        migration_template 'migrations/district.rb', 'db/migrate/create_districts.rb', migration_version: migration_version
        migration_template 'migrations/data.rb', 'db/migrate/insert_indonesia_address.rb', migration_version: migration_version
      end

      def rails5?
        Rails.version.start_with? '5'
      end

      def migration_version
        if rails5?
          "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
        end
      end
    end
  end
end
