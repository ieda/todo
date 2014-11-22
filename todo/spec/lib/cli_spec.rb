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

  describe '#list' do
    context '正常ケース' do
      let(:task_list) { ['task1', 'task2'] }
      before { expect(Todo::Task).to receive(:all).and_return(task_list) }
      subject { described_class.new.list }
      it { should be task_list }
    end
  end

end
