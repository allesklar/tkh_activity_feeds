require 'rails/generators/migration'

module TkhActivityFeeds
  module Generators
    class CreateOrUpdateMigrationsGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      desc "add the migrations and locale files"
      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_migrations
        puts 'creating activity migration'
        migration_template "create_activities.rb", "db/migrate/create_activities.rb"
        migration_template "add_admin_field_to_activities.rb", "db/migrate/add_admin_field_to_activities.rb"
      end

    end
  end
end
