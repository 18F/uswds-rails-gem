module Uswds
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Uswds::Rails

      config.generators do |g|
        g.test_framework :rspec
      end
    end
  end
end
