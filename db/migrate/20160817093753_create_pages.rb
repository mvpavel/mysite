class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
    	
    	t.string :name, null: false, default: ''
    	t.text :description, limit: 16777215, default: nil, null: true
      
      t.timestamps null: false
    end
  end
end
