class CreateLocationimagesLocationimages < ActiveRecord::Migration

  def up
    create_table :refinery_locationimages do |t|
      t.string :title
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-locationimages"})
    end

    drop_table :refinery_locationimages

  end

end
