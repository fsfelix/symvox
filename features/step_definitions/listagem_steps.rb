When(/^I visit my homepage$/) do
  visit root_path
end

Then(/^I should see a list of instruments$/) do
  expect(page).to have_content("hi")
end