class CreateRssFeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :rss_feeds do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
