# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FoodsApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # deviseを日本語に
    config.i18n.default_locale = :ja
    # タイムゾーンも変更するなら，以下を追加
    config.time_zone = 'Asia/Tokyo'

    # 認証トークンをremoteフォームに埋め込む
    config.action_view.embed_authenticity_token_in_remote_forms = true

    config.generators do |g|
         g.test_framework :rspec,
           fixtures: false,
           view_specs: false,
           helper_specs: false,
           routing_specs: false

           # Railsジェネレータがfactory_bot用のファイルを生成するのを無効化
           g.factory_bot false
           # ファクトリファイルの置き場を変更
           g.factory_bot dir: 'custom/dir/for/factories'
       end

  end
end
