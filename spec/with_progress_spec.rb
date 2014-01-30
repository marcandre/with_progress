require 'with_progress'

Enumerator = Enumerable::Enumerator unless Object.const_defined? :Enumerator

describe "with_progress" do
  subject { 42.times.to_enum(:map).with_progress(&block) }

  describe 'when called without a block' do
    let(:block) { nil }

    it { should be_instance_of(Enumerator) }
    if Enumerator.respond_to? :size
      its(:size) { should == 42 }
    end
    it "works" do
      subject.each{|i| i + 10}.should == [*10...52]
    end
    it "can be interrupted" do
      subject.each{|i| break -i if i >= 4; sleep 0.1; i + 10}.should == -4
    end
  end

  describe 'when called with a block' do
    let(:block) {Proc.new{|i| i + 10} }

    it { should == [*10...52] }
  end
end
