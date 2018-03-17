CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     'AKIAIXSA5WTKXWFBXCSA',
      aws_secret_access_key: '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',
      region: 'ap-southeast-2'
  }
  config.fog_directory  = 'goldenbanks'
end