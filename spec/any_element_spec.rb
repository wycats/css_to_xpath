require File.expand_path(File.join(File.dirname(__FILE__), "spec_helper"))

describe "*" do
  it "should get a list of all nodes" do
    HTML.should have_nodes("*", 12)
  end  
end

describe "E *" do
  it "should get a list of descendant nodes of E" do
    HTML.should have_nodes("div *", 5)
  end
end