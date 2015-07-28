module Mui
  module Sass
    class << self
      def load!
        if defined?(::Compass::Frameworks)
          register_compass_extension
        elsif defined?(::Rails)
          register_rails_engine
        elsif defined?(::Sprockets)
          register_sprockets
        end

        configure_sass
      end

      def gem_path
        @gem_path ||= File.expand_path('..', File.dirname(__FILE__))
      end

      def stylesheets_path
        File.join(gem_path, 'vendor/assets/stylesheets')
      end

      def javascripts_path
        File.join(gem_path, 'vendor/assets/javascripts')
      end

      private

        def configure_sass
          require 'sass'

          ::Sass.load_paths << stylesheets_path
        end

        def register_compass_extension
          require 'mui/sass/version'

          ::Compass::Frameworks.register(
              'mui',
              version:               Mui::Sass::VERSION,
              path:                  gem_path,
              stylesheets_directory: stylesheets_path,
              templates_directory:   File.join(gem_path, 'templates')
          )
        end

        def register_rails_engine
          require 'mui/sass/engine'
        end

        def register_sprockets
          Sprockets.append_path(stylesheets_path)
          Sprockets.append_path(javascripts_path)
        end
    end
  end
end

Mui::Sass.load!
