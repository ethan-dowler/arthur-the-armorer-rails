return unless Rails.env.development?
raise "Cannot run seeds more than once. Use db:seed:replant to start over." if Account.exists?

account_one = Account.create!(nickname: "Account One")
playthrough_one = account_one.playthroughs.create!
