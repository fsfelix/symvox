# -*- encoding : utf-8 -*-
When(/^I fill the "(.*?)" field with "(.*?)"$/) do |label, value|
  fill_in label, with: value
end

Then(/^I should see "(.*?)"$/) do |text|
  find('body').has_content?(text)
end

When(/^I press the "(.*?)" button$/) do |caption|
  click_button caption
end
