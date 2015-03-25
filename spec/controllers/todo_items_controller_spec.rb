require 'rails_helper'

describe TodoItemsController do
  let(:todo_items_controller) do
    TodoItemsController.new
  end

  it '#create' do
    expect(todo_items_controller.create).to eq('Exception in RSpec')
  end

  it '#destroy' do
    expect(todo_items_controller.destroy).to eq('Exception in RSpec')
  end

  it '#complete' do
    expect(todo_items_controller.complete).to eq('Exception in RSpec')
  end
end
