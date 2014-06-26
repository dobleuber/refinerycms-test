module Refinery
  module Locations
    class Location < Refinery::Core::BaseModel
      self.table_name = 'refinery_locations'

      attr_accessible :name, :description, :picture_id, :country, :state, :city, :address, :zip, :hours, :telephone, :fax, :email, :directionslink, :about, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :picture, :class_name => '::Refinery::Image'
    end
  end
end
