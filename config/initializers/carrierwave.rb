if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIA6NIHDFM4LI6YLDWK',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'foods-app'
    config.cache_storage = :fog
  end
end
