class AddDetailsToGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :city, :string
    add_column :groups, :udemy_url_img, :string
  end
end
