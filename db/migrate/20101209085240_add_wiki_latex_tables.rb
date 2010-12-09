class AddWikiLatexTables < ActiveRecord::Migration
  def self.up
	
  create_table :wiki_latexes do |t|
      t.string :image_id, :limit => 64, :null => false
      t.text :source, :null => false
    end
    add_index :wiki_latexes, :image_id, :name => :wiki_latexes_image_id
end
  def self.down
	drop_table :wiki_latexes
  end
end
