require 'rails_helper'

RSpec.describe TodoItem, regressor: true do

  # === Relations ===
  it { is_expected.to belong_to :todo_list}
  
  

  # === Nested Attributes ===
  

  # === Database (Columns) ===
  it { is_expected.to have_db_column :id }
	it { is_expected.to have_db_column :content }
	it { is_expected.to have_db_column :todo_list_id }
	it { is_expected.to have_db_column :created_at }
	it { is_expected.to have_db_column :updated_at }
	it { is_expected.to have_db_column :completed_at }

  # === Database (Indexes) ===
  it { is_expected.to have_db_index ["todo_list_id"]}

  # === Validations (Length) ===
  

  # === Validations (Presence) ===
  

  # === Validations (Numericality) ===
  

  
  # === Enums ===
  
  
end