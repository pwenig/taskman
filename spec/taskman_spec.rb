require "spec_helper"
require "capybara/rspec"
require_relative "../app"
Capybara.app = App

feature 'managing task list' do
  scenario 'user can add tasks to a list' do
    visit('/')
    expect(page).to have_content "Welcome"
    click_link "Add a task"
  end
end
