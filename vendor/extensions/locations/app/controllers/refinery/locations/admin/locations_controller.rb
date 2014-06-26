module Refinery
  module Locations
    module Admin
      class LocationsController < ::Refinery::AdminController

        crudify :'refinery/locations/location',
                :title_attribute => 'name',
                :xhr_paging => true

        protected
          def location_params
            params.require(:location).permit(:name, :description, :picture_id, :country, :state, :city, :address, :zip, :hours, :telephone, :fax, :email, :directionslink, :about)
          end
      end
    end
  end
end
