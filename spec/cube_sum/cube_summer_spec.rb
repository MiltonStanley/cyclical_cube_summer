require 'spec_helper'

RSpec.describe CubeSum::CubeSummer do
  it { expect(subject.get_digit_array(125)).to eq([1,2,5]) }
  it { expect(subject.cube_array([1,2,5])).to eq([1,8,125]) }
  it { expect(subject.sum_array([1,2,5])).to eq(8) }
end