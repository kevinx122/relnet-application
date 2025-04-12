require 'rails_helper'

RSpec.describe 'Example System Test', type: :system do
  let(:user) { create(:user, :with_team) }

  it 'logins successfully' do
    login_user(user)

    expect(page).to have_content('Create your first Project')
  end
end
