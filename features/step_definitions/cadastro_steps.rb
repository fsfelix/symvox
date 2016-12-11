Given(/^I am at the user creation page$/) do
  visit new_musician_path
end

Given(/^I am at the my page$/) do
  #visit "musicians/10/edit"
  @musician = Musician.find(params[:id])
  visit edit_musician_path(@musician) 
end

Given(/^I am an alpha Musician$/) do
  #visit new_musician_path
end

