module Refinery
  module Events
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Events

      engine_name :refinery_events

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "places"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.events_admin_places_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/events/place',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/events/places(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Places)
      end
    end
  end
end
