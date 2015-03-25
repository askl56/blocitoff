require 'rails_helper'

describe TodoItem do
  let(:todo_item) do
    TodoItem.new
  end

  it '#completed?' do
    expect(todo_item.completed?).to eq(false)
  end
end
