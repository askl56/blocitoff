require 'rails_helper'

describe UsersController do
  let(:users_controller) do
    UsersController.new
  end

  it '#new' do
    expect(users_controller.new).to eq('Returned instance object User id: nil, email: nil, password_digest: nil, created_at: nil, updated_at')
  end

  it '#create' do
    expect(users_controller.create).to eq('Exception in RSpec')
  end
end
