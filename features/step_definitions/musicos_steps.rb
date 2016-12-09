Given(/^I am in the homepage$/) do
  visit root_path
end

When(/^I click the "(.*?)" link$/) do |caption|
  click_link caption, match: :first
end


Then (/^I should see a list of musicians$/) do

end