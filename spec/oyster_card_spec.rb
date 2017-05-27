require 'oyster_card'

describe Oystercard do

  it 'has an initial balance of zero' do
    expect(subject.balance).to eq 0
  end

end
