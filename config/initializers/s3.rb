CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAJHDD4YQKEXGBD55A",
      :aws_secret_access_key  => "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",
      :region                 => 'us-west-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "learnapt-comics-dev"
end