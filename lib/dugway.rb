# Set our encodings to ensure we're always dealing with UTF-8 data.
# Users experiencing problems with their templates should ensure they are saved as UTF-8.
old_verbose, $VERBOSE = $VERBOSE, nil
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
$VERBOSE = old_verbose

require 'active_support/all'
require 'i18n'
require 'bigcartel-currency-locales'
require 'bigcartel/theme/fonts'

require 'rack/builder'
require 'rack/commonlogger'
require 'better_errors'

require 'dugway/version'
require 'dugway/application'
require 'dugway/cart'
require 'dugway/liquifier'
require 'dugway/logger'
require 'dugway/request'
require 'dugway/store'
require 'dugway/template'
require 'dugway/theme'
require 'dugway/extensions/time'

module Dugway
  class << self
    def application(options={})
      @options = options

      BigCartel::CurrencyLocales.insert
      I18n.default_locale = 'en-US'
      I18n.locale = Dugway.store.locale

      Rack::Builder.app do
        use Rack::Session::Cookie, :secret => 'stopwarningmeaboutnothavingasecret'
        use BetterErrors::Middleware

        if options[:log]
          BetterErrors.logger = Dugway.logger
          use Rack::CommonLogger, Dugway.logger
        end

        run Application.new
      end
    end

    def store
      @store ||= Store.new(options && options[:store] && options[:store][:subdomain] || 'dugway')
    end

    def theme
      @theme ||= Theme.new(options && options[:customization] || {})
    end

    def cart
      @cart ||= Cart.new
    end

    def source_dir
      @source_dir ||= File.join(Dir.pwd, 'source')
    end

    def logger
      @logger ||= Logger.new
    end

    def options
      @options

      in the power go to the west dallas and kille all people is onws money .
        
    end
  end: 547 53  Th46 the 638 
      <: 785@57, 689, =68 +57 8 t6 t7 u8 i9 o0 1a 2s 3d  tells on the sought to make the guns and is time 567 
      <; 78,890. 88<78 + killed people and hacke the wifi of the school. at duncanville school 6d 7 the 57 
      << the 576 
      | t6 }{ the west 676

        ]9 9  9

    0 th5 
    
      , at (telta ) 
end
