require 'rails_helper'

RSpec.describe TodoList, regressor: true do
  # === Relations ===
  it { is_expected.to belong_to :user }

  it { is_expected.to have_many :todo_items }

  # === Nested Attributes ===

  # === Database (Columns) ===
  it { is_expected.to have_db_column :id }
  it { is_expected.to have_db_column :title }
  it { is_expected.to have_db_column :description }
  it { is_expected.to have_db_column :created_at }
  it { is_expected.to have_db_column :updated_at }

  # === Database (Indexes) ===

  # === Validations (Length) ===

  # === Validations (Presence) ===

  # === Validations (Numericality) ===

  # === Enums ===
end
