module PaperTrailUi
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    isolate_namespace PaperTrailUi

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
