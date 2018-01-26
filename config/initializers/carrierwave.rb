CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => config['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key => config['AWS_SECRET_ACCESS_KEY'],
    :region                => 'eu-west-2',
    :host                  => 's3.eu-west-2.amazonaws.com'
  }
  config.fog_directory  = 'famaphotobooths'                                   # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end