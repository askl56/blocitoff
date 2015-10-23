require 'rails_helper'

RSpec.describe SessionsController, regressor: true do
  # === Routes (REST) ===
  it { is_expected.to route(:post, '/sessions').to('sessions#create', {}) }
  it { is_expected.to route(:get, '/logout').to('sessions#destroy', {}) }
  it { is_expected.to route(:get, '/login').to('sessions#new', {}) }
  # === Callbacks (Before) ===
  it { is_expected.to use_before_filter(:verify_authenticity_token) }
  it { is_expected.to use_before_filter(:set_xhr_redirected_to) }
  it { is_expected.to use_before_filter(:set_request_method_cookie) }
  it { is_expected.to use_before_filter(:authorize) }
  # === Callbacks (After) ===
  it { is_expected.to use_after_filter(:abort_xdomain_redirect) }
  it { is_expected.to use_after_filter(:verify_same_origin_request) }
  # === Callbacks (Around) ===
end
