require 'rails_helper'

RSpec.describe 'Project Settings', type: :system do
  let(:user) { create(:user, :with_team) }
  let(:project) { create(:project, team: user.team) }

  before do
    create(:project_user, project: project, user: user)
    login_user(user)
  end

  it 'displays the project settings page' do
    visit project_releases_path(project.public_key)

    click_on 'Project Settings'
    click_on 'Save'

    expect(page).to have_content('Details Saved Successfully')
  end
end
