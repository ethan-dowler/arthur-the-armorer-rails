Rails.application.config.generators do |g|
  # model
  g.orm :active_record, primary_key_type: :uuid
  # controller
  g.helper false
  # other
  g.test_framework :rspec
end
