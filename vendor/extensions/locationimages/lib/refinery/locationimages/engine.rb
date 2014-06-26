module Refinery
  module Locationimages
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Locationimages

      engine_name :refinery_locationimages

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "locationimages"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.locationimages_admin_locationimages_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/locationimages/locationimage'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Locationimages)
      end
    end
  end
end
