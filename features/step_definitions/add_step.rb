Given(/^Open the homepage to add a bookmark$/) do
  @homepage = HomePage.new
  @homepage.load
end

When(/^input "([^"]*)" and "([^"]*)"$/) do | title, address|
  @homepage.add title, address
end

And(/^Search ([^"]*)"$/) do | search_content |
  @homepage.search search_content
end

Then(/^Have (\d+) result match$/) do | expect |
  expect(@homepage.result).to eq expect.to_i
end
