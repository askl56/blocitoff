require 'rails_helper'

RSpec.describe TodoItemsController, regressor: true do
  # === Routes (REST) ===
  it { should route(:patch, '/todo_lists/1/todo_items/1/complete').to('todo_items#complete', todo_list_id: '1', id: '1') }
  it { should route(:post, '/todo_lists/1/todo_items').to('todo_items#create', todo_list_id: '1') }
  it { should route(:delete, '/todo_lists/1/todo_items/1').to('todo_items#destroy', todo_list_id: '1', id: '1') }
  # === Callbacks (Before) ===
  it { should use_before_filter(:verify_authenticity_token) }
  it { should use_before_filter(:set_xhr_redirected_to) }
  it { should use_before_filter(:set_request_method_cookie) }
  it { should use_before_filter(:authorize) }
  it { should use_before_filter(:set_todo_list) }
  it { should use_before_filter(:set_todo_item) }
  # === Callbacks (After) ===
  it { should use_after_filter(:abort_xdomain_redirect) }
  it { should use_after_filter(:verify_same_origin_request) }
  # === Callbacks (Around) ===
end
