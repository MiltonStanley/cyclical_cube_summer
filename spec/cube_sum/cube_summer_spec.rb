require 'spec_helper'

RSpec.describe CubeSum::CubeSummer do
  let(:triangles) { [153, 370, 371] }

  context 'basic functions' do
    it { expect(subject.get_digit_array(125)).to eq([1,2,5]) }
    it { expect(subject.cube_array([1,2,5])).to eq([1,8,125]) }
    it { expect(subject.sum_array([1,2,5])).to eq(8) }
  end

  context 'single cycle for numbers' do
    context 'triangular numbers' do
      it 'are triangular from the spec constant' do
        triangles.each do |num|
          expect(subject.single_cycle(num)).to eq(num)
        end
      end
    end

    context 'Other numbers' do
      it { expect(subject.single_cycle(666)).to eq(648) }
      it { expect(subject.single_cycle(9)).to eq(729) }
      it { expect(subject.single_cycle(737)).to eq(713) }
      it { expect(subject.single_cycle(713)).to eq(371) }
    end

    context 'No other numbers are triangular' do
      it 'finds no others' do
        (1..100).each do |integer|
          next if triangles.include?(integer) || integer == 1
          actual = subject.single_cycle(integer)
          expect(actual).not_to eq(integer)
        end
      end
    end
  end
end