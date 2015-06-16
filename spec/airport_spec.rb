require 'airport'


describe Airport do

  before(:each) do
    @capacity = AIRPORT_CAPACITY
  end

  let(:plane) { double :plane }
  let(:weather) { double :weather }

  it 'a plane can land' do
    expect(subject).to respond_to :land
  end

  it 'a plane can take off' do
    expect(subject).to respond_to :take_off
  end

  describe 'land' do
    it 'a plane cannot land if the airport is full' do
      allow(plane).to receive(:landed).and_return("landed")
      allow(subject).to receive(:forecast).and_return("sunny")
      @capacity.times { subject.land plane }
      expect { subject.land plane }.to raise_error 'airport full, permission denied'
    end
    # it 'a plane cannot take off if the hangar is empty' do
    #   subject.hangar.count = 0
    #   expect { subject.take_off plane }.to raise_error 'no planes'
    # end

    it 'raises an error when full with default capacity' do
      expect(@capacity).to eq 10
    end
    it 'a plane cannot land if the weather is stormy' do
      allow(subject).to receive(:forecast).and_return("stormy")
      expect { subject.land plane }.to raise_error 'stormy weather, permission denied'
    end
    it 'a plane cannot take off if the weather is stormy or storm brewing' do
      allow(subject).to receive(:forecast).and_return("stormy")
      expect { subject.take_off plane }.to raise_error 'stormy weather, permission denied'
    end
  end
end
