require 'player'

describe 'Player' do
  let(:subject) { Player.new('Harry')}

  it 'returns its name' do
    expect(subject.name).to eq "Harry"
  end
  
end