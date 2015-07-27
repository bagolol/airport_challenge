require 'plane'

describe Plane do

  it 'has a flying status when created' do
    expect(subject.status).to eq :flying
  end
  it 'has a landed status when landed' do
    subject.landed
    expect(subject.status).to eq :landed
  end
  it 'has a flying status when in the air' do
    subject.flying
    expect(subject.status).to eq :flying
  end
end

