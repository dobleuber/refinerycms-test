module Refinery
  module Menus
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Menus

      engine_name :refinery_menus

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "menus"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.menus_admin_menus_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/menus/menu'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Menus)
      end
    end
  end
end
