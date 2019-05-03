class CreatePages < ActiveRecord::Migration[5.2]
  def change
     add_index :pages, :email, unique: true
  end
end
