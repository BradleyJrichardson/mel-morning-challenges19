class AddAttributesToPodcast < ActiveRecord::Migration[5.2]
  def change
    add_column :podcasts, :channel_image, :string
    remove_column :podcasts, :explict_contect
    add_column :episodes, :rating, :integer
  end
end
