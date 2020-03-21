require 'airport'

describe Airport do

  let(:jumbo) { Plane.new } 
 
  context '#landing' do

    it { is_expected.to respond_to :land }

    it "expects one argument" do
      expect(subject).to respond_to(:land).with(1).argument
    end

    it "return Plane object" do
      expect(subject.land(jumbo)).to be_an_instance_of(Plane)
    end
  end
end
