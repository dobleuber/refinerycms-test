class CreateLocationsLocations < ActiveRecord::Migration

  def up
    create_table :refinery_locations do |t|
      t.string :name
      t.text :description
      t.integer :picture_id
      t.string :country
      t.string :state
      t.string :city
      t.string :address
      t.string :zip
      t.string :hours
      t.string :telephone
      t.string :fax
      t.string :email
      t.string :directionslink
      t.text :about
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-locations"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/locations/locations"})
    end

    drop_table :refinery_locations

  end

end
