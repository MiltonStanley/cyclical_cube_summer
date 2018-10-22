require 'spec_helper'

RSpec.describe CubeSum::CubeSummer do
  it { expect(subject.cube(5)).to eq(125) }
  it { expect(subject.sum(125)).to eq(8) }
end