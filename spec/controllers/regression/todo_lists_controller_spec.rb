require 'rails_helper'

RSpec.describe TodoListsController, regressor: true do
  # === Routes (REST) ===
  it { is_expected.to route(:post, '/todo_lists').to('todo_lists#create', {}) }
  it { is_expected.to route(:delete, '/todo_lists/1').to('todo_lists#destroy', id: '1') }
  it { is_expected.to route(:get, '/todo_lists/1/edit').to('todo_lists#edit', id: '1') }
  it { is_expected.to route(:get, '/todo_lists').to('todo_lists#index', {}) }
  it { is_expected.to route(:get, '/todo_lists/new').to('todo_lists#new', {}) }
  it { is_expected.to route(:get, '/todo_lists/1').to('todo_lists#show', id: '1') }
  it { is_expected.to route(:patch, '/todo_lists/1').to('todo_lists#update', id: '1') }
  # === Callbacks (Before) ===
  it { is_expected.to use_before_filter(:verify_authenticity_token) }
  it { is_expected.to use_before_filter(:set_xhr_redirected_to) }
  it { is_expected.to use_before_filter(:set_request_method_cookie) }
  it { is_expected.to use_before_filter(:authorize) }
  it { is_expected.to use_before_filter(:set_todo_list) }
  # === Callbacks (After) ===
  it { is_expected.to use_after_filter(:abort_xdomain_redirect) }
  it { is_expected.to use_after_filter(:verify_same_origin_request) }
  # === Callbacks (Around) ===
end
