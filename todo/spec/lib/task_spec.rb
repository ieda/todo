require 'spec_helper'

describe Todo::Task do
  describe '#add' do
    context '正常ケース' do
      let(:message) { 'message' }
      subject { described_class.new.add(message) }
      it { expect(subject.order).to eq 1 }
    end
  end
end
