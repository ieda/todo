require 'spec_helper'

describe Todo::Cli do
  describe '#add' do
    context '正常ケース' do
      let(:message) { 'dummy' }
      before { expect(Todo::Task).to receive(:create).and_return(true) }
      subject { described_class.new.add(message) }
      it { should be true }
    end
  end
end
