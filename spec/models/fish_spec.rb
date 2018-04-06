require 'rails_helper'

RSpec.describe Fish, type: :model do
  subject { described_class.new(FactoryBot.attributes_for(:fish)) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
