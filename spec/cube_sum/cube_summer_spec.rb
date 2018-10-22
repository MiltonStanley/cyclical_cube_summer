require 'spec_helper'

RSpec.describe CubeSum::CubeSummer do
  it { expect(subject.cuber(5)).to eq(125) }
end