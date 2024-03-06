return unless Rails.env.development?
raise "Cannot run seeds more than once. Use db:seed:replant to start over." if Playthrough.exists?

playthrough_one = Playthrough.create!
