require 'spec_helper'

RSpec.describe CubeSum::CubeSummer do
  let(:triangles) { [153, 370, 371] }
  let(:found4triangles) { [407] }
  let(:all_triangles) { triangles.push(found4triangles).flatten }

  context 'basic functions' do
    it { expect(subject.get_digit_array(125)).to eq([1,2,5]) }
    it { expect(subject.cube_array([1,2,5])).to eq([1,8,125]) }
    it { expect(subject.sum_array([1,2,5])).to eq(8) }
  end

  context 'single cycle for numbers' do
    context 'triangular numbers' do
      context 'main 3 numbers' do
        it 'are triangular from the spec constant' do
          triangles.each do |num|
            expect(subject.single_cycle(num)).to eq(num)
          end
        end
      end

      context 'found 4-type triangles' do
        it 'are also triangular' do
          found4triangles.each do |num|
            expect(subject.single_cycle(num)).to eq(num)
          end
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
        max = 100_000_000
        puts "\t\t\tCalculating cube-sums up to #{max}"
        (1..max).each do |integer|
          percent = integer.to_f / max.to_f * 100.0
          print "\t\t\t#{(percent*100).floor/100.0}% done\r"
          next if all_triangles.include?(integer) || integer == 1
          actual = subject.single_cycle(integer)
          expect(actual).not_to eq(integer)
        end
      end
    end
  end
end