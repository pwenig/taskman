require "spec_helper"
require "capybara/rspec"
require_relative "../app"
Capybara.app = App

feature 'managing task list' do
  scenario 'user can add tasks to a list' do
    visit('/')
    expect(page).to have_content "Welcome"
    click_link "Add a task"
    fill_in "task", with: "Buy teacher gift"
    click_on "Create task"
    expect(page).to have_content "Buy teacher gift"
  end
end
