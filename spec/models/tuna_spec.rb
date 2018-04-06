require 'rails_helper'

RSpec.describe Tuna, type: :model do
  subject { described_class.new(FactoryBot.attributes_for(:tuna)) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without origin' do
    subject.origin = nil
    expect(subject).to_not be_valid
  end

  it_behaves_like "an STI class"
end
