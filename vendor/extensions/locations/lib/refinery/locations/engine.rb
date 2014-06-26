module Refinery
  module Locations
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Locations

      engine_name :refinery_locations

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "locations"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.locations_admin_locations_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/locations/location',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Locations)
      end
    end
  end
end
