class AddBandIdtoAlbum < ActiveRecord::Migration[5.1]
  def change
    self.add_column(:albums, :band_id, :integer, { null: false, index: true })
  end
end
