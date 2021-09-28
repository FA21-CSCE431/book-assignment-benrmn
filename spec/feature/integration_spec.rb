# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 40.0
    select 2021, :from => "book_published_date_1i"
    select 'September', :from => "book_published_date_2i"
    select 28, :from => "book_published_date_3i"
    select 10, :from => "book_published_date_4i"
    select 10, :from => "book_published_date_5i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end
