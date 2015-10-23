require 'rails_helper'

RSpec.describe TodoItemsController, regressor: true do
  # === Routes (REST) ===
  it { is_expected.to route(:patch, '/todo_lists/1/todo_items/1/complete').to('todo_items#complete', todo_list_id: '1', id: '1') }
  it { is_expected.to route(:post, '/todo_lists/1/todo_items').to('todo_items#create', todo_list_id: '1') }
  it { is_expected.to route(:delete, '/todo_lists/1/todo_items/1').to('todo_items#destroy', todo_list_id: '1', id: '1') }
  # === Callbacks (Before) ===
  it { is_expected.to use_before_filter(:verify_authenticity_token) }
  it { is_expected.to use_before_filter(:set_xhr_redirected_to) }
  it { is_expected.to use_before_filter(:set_request_method_cookie) }
  it { is_expected.to use_before_filter(:authorize) }
  it { is_expected.to use_before_filter(:set_todo_list) }
  it { is_expected.to use_before_filter(:set_todo_item) }
  # === Callbacks (After) ===
  it { is_expected.to use_after_filter(:abort_xdomain_redirect) }
  it { is_expected.to use_after_filter(:verify_same_origin_request) }
  # === Callbacks (Around) ===
end
