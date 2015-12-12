Given(/^Open the homepage to delete a bookmark$/) do
  @homepage = HomePage.new
  @homepage.load
end

When(/^Click the first delete button$/) do
  @homepage.delete
end

Then(/^Search the deleted bookmark "([^"]*)"$/) do | search_content |
  @homepage.search search_content
end

And(/^Get (\d+) result$/) do | expect |
  expect(@homepage.result).to eq expect.to_i
end
