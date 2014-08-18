namespace :tkh_activity_feeds do
  desc "Create migrations and locale files"
  task :install do
    system 'rails g tkh_activity_feeds:create_or_update_migrations'
    # system 'rails g tkh_activity_feeds:create_or_update_locales -f'
  end

  desc "Update files. Skip existing migrations. Force overwrite locales"
  task :update do
    system 'rails g tkh_activity_feeds:create_or_update_migrations -s'
    # system 'rails g tkh_activity_feeds:create_or_update_locales -f'
  end
end

