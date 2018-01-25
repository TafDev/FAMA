CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIWSBCR2NK44RXRHQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'eu-west-2',                  # optional, defaults to 'us-east-1'
    host:                  's3.eu-west-2.amazonaws.com',             # optional, defaults to nil
    # endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'famaphotobooths'                                   # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end