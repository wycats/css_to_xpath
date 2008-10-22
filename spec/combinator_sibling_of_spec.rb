require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "The sibling of combinator" do
  
  it "<div ~ p> should return the p tag" do
    HTML.should have_nodes("div ~ p", 3)
  end
  
  it "<div ~ p[class]> should only have 2 p tags" do
    HTML.should have_nodes("div ~ p[class]", 2)
  end
  
  it "<p[class] ~ p[class] should only match one" do
    HTML.should have_nodes("p[class] ~ p[class]", 1)
  end
  
  it "<p[class] ~ p should have two" do
    HTML.should have_nodes("p[class] ~ p", 2)
  end
  
  it "<div ~ div> should only have one" do
    HTML.should have_nodes("div ~ div", 1)
  end
  
  it "<div ~ span> should have none" do
    HTML.should have_nodes("div ~ span", 0)
  end
  
  it "<html ~ body> should have none" do
    HTML.should have_nodes("html ~ body", 0)
  end
  
end