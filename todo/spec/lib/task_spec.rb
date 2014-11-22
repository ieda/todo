require 'spec_helper'

describe Todo::Task do
  describe '#add' do
    context '正常ケース' do
      context '1回呼ぶ' do
        let(:message) { 'message' }
        subject { described_class.new.add(message) }
        it { expect(subject.order).to eq 1 }
      end
      context '2回呼ぶ' do
        let(:message) { 'message' }
        subject do 
          described_class.new.add(message)
          described_class.new.add(message)
        end
        it { expect(subject.order).to eq 2 }
      end
    end
  end
end
