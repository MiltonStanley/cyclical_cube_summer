require 'spec_helper'

RSpec.describe CubeSum::CubeSummer do
  context 'basic functions' do
    it { expect(subject.get_digit_array(125)).to eq([1,2,5]) }
    it { expect(subject.cube_array([1,2,5])).to eq([1,8,125]) }
    it { expect(subject.sum_array([1,2,5])).to eq(8) }
  end

  context 'single cycle for numbers' do
    it { expect(subject.single_cycle(153)).to eq(153) }
  end
end