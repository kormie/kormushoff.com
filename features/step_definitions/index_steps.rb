Given /^I visit "([^"]*)"$/ do |page|
    visit(page)
end

When /^I look at the page$/ do
end

Then /^The title should be "([^"]*)"$/ do |title|
  within('head title') do
    page.should have_content(title)
  end
end

Then /^I should see the Navigation$/ do
    page.should have_css(".nav")
    within('.nav') do
      page.should have_content('Home')
      page.should have_content('Work')
      page.should have_content('Contact')
    end
end
