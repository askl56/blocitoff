class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  has_one :todo_list

  def completed?
    !completed_at.blank?
  end

  def days_left
    7 - (DateTime.now.to_date - created_at.to_date).to_i
  end
end
