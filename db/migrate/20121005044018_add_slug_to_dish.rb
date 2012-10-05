class AddSlugToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :slug, :string
  end
end
