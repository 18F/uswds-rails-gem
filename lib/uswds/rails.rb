require 'uswds/rails/version'

module Uswds
  module Rails
    class << self

      def load!
        register_rails_engine
        configure_sass
      end

      # Paths
      def gem_path
        @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
      end

      def stylesheets_path
        File.join assets_path, 'stylesheets'
      end

      def fonts_path
        File.join assets_path, 'fonts'
      end

      def javascripts_path
        File.join assets_path, 'javascripts'
      end

      def assets_path
        @assets_path ||= File.join gem_path, 'assets'
      end

      private

      def configure_sass
        require 'sass'

        ::Sass.load_paths << stylesheets_path

        # bootstrap requires minimum precision of 8, see https://github.com/twbs/bootstrap-sass/issues/409
        ::Sass::Script::Number.precision = [8, ::Sass::Script::Number.precision].max
      end

      def register_rails_engine
        require 'uswds/rails/engine'
      end
    end
  end
end

Uswds::Rails.load!
