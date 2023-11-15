class SetStationDefault < ActiveRecord::Migration[7.0]
  def self.up
    change_column :stations, :capacity, :default => "0"
  end

  def self.down
    # You can't currently remove default values in Rails
    raise ActiveRecord::IrreversibleMigration, "Can't remove the default"
  end
end
