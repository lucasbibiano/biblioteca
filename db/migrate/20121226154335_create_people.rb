# -*- encoding : utf-8 -*-
class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :phone
      t.text   :address
      
      t.timestamps
    end
  end
end
