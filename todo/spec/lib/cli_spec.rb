require 'spec_helper'

describe Todo::Cli do
  describe '#add' do
    let(:message) { 'add test' }
    subject { described_class.new.add(message) }
    it { should be true }
  end
end
