require 'rails_helper'

feature 'restaurants' do
	context 'restaurants have been added' do
		before do
			Restaurant.create(name: 'KFC')
		end

		scenario 'display restaurants' do
			visit '/restaurants'
			expect(page).to have_content 'KFC'
			expect(page).not_to have_content 'No restaurants yet'
		end
	end
end