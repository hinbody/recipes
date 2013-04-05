require 'spec_helper'

feature 'Creating Recipes' do
  scenario "can create a recipe" do
    visit '/'

    click_link 'New Recipe'

    fill_in 'Recipe Name', :with => 'Popcorn'
    fill_in 'Description', :with => 'Making popcorn on the stove'
    click_button 'Create Recipe'

    expect(page).to have_content('Recipe has been created.')
  end
end
