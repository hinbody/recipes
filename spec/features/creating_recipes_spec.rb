require 'spec_helper'

feature 'Creating Recipes' do
  before do
    visit '/'

    click_link 'New Recipe'
  end

  scenario "can create a recipe" do
    fill_in 'Recipe Name', :with => 'Popcorn'
    fill_in 'Description', :with => 'Making popcorn on the stove'
    click_button 'Create Recipe'

    expect(page).to have_content('Recipe has been created.')
  end

  scenario "can not create a recipe without a name" do
    click_button 'Create Recipe'

    expect(page).to have_content("Recipe has not been created.")
    expect(page).to have_content("Name can't be blank")
  end
end
