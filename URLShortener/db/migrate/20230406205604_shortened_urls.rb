class ShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shortenedurls do |t|
      t.string :short_url, null: false,
      t.string :long_url, null: false,
      t.integer :user_id, null: false
  end
  add_index :shortenedurls, :short_url, unique: true,
  add_index :shortenedurls, :long_url, unique: true

end
