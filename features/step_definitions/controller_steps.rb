Given /^I have opened the application$/ do
  remote.exec("window.controller.reset()").should == "Pressed reset"
end

When /^I press the (.+) button$/ do |command|
  remote.exec("window.controller.#{command}()").should == "Pressed #{command}"
end

Then /^I should see "([^"]*)" on the screen$/ do |text|
  remote.exec("window.controller.inspectScreen()").should == text
end