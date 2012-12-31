# -*- encoding : utf-8 -*-
class AddApprovedToUser < ActiveRecord::Migration
  def self.up
    add_column :people, :approved, :boolean, :default => false, :null => false
    add_index  :people, :approved
  end

  def self.down
    remove_index  :people, :approved
    remove_column :people, :approved
  end
end
