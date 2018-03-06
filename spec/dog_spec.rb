require_relative '../dog'

RSpec::describe Dog do
    let(:dog){Dog.new :female, husky}

    it "should respond to walk" do
        expect(dog).to respond_to :walk
    end

it "should provide a message of how many walks" do
        expect(dog.walk).to eq "I have been on 0 walk today"
        expect(dog.walk).to eq "I have been on 1 walks today"
    end
end