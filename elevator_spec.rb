require 'rspec'
require_relative 'elevator'

describe Elevator do

    let(:elevator) {Elevator.new()}

    it "is a real elevator" do
        expect{elevator}.to_not raise_error
    end

    it ""
end
