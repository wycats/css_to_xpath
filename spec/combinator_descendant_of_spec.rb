require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "The descendant of combinator" do
  
  it "<body *> should return all the child nodes of the body" do
    HTML.should have_nodes("body *", 10)
  end
  
  it "<div *> should return all the child nodes of the div" do
    HTML.should have_nodes("div *", 5)
  end
  
  it "<body p> should return the p" do
    HTML.should have_nodes("body p", 3)
  end
  
  it "<div body> should return nothing" do
    HTML.should have_nodes("div body", 0)
  end
  
  it "<html div span> should return the spans" do
    HTML.should have_nodes("html div span", 4)
  end
  
end