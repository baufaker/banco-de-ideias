Given /^I can insert an idea in the database$/ do
  Idea.create(:name => "O CARA", :author => "Guilherme", :description => "teste")
  Idea.create(:name => "VeryCommon", :author => "Jacopo", :description => "teste")
  Idea.create(:name => "Analise e Resolucao de problemas pessoais", :author => "Joao Stein", :description => "teste")
end

Given /^I have a page with a form$/ do
  visit "/new"
  page.should have_content "Nos informe a sua ideia"
  page.should have_field "name"
  page.should have_field "author"
  page.should have_field "description"
end

When /^I fill the form in$/ do
  fill_in "author", :with => "Jacopo"
  fill_in "name", :with => "Raparigas"
  fill_in "description", :with => "teste de raparigas"
  click_button "Enviar a ideia"
end

Then /^I am able to see the idea I created$/ do
  # page.should have_content "Raparigas"
  # page.should have_content "Jacopo"
  # page.should have_content "teste de raparigas"
end