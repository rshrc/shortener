require 'rails/generators'
require 'rails/generators/migration'

class ShortenerGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    File.expand_path('templates', __dir__)
  end

  def self.next_migration_number(dirname)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end
  
  def create_migration_file
    migration_template 'migration.rb', 'db/migrate/create_shortened_urls_table.rb'
  end
end
