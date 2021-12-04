require 'ten_minute_walk'

describe 'ten minute walk' do
  it 'returns true if its a 10 minute walk' do 
    expect(ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])).to eq true
  end
    it 'returns false if its in one direction only' do 
    expect(ten_minute_walk?(['n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n'])).to eq false
  end
end