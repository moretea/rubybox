require "rubybox"

require "rubybox"

describe RubyBox do
  simple_expressions = {
    "1 + 2"          => 3,
    "x = 2; (5 * x)" => 10
  }

  context "works with simple expressions" do
    simple_expressions.each do |expression, value|
      it "processed '#{expression}'" do
        sandbox = RubyBox::SandBox.new

        sandbox.eval(expression).should == value
      end
    end
  end
end
