class AddReadCountsToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :read_counts, :integer, default: 0
  end
end
