require 'hanoi'

describe Hanoi do
  subject(:hanoi) {Hanoi.new}

  describe '#initialize' do
    it 'sets up an array of three subarrays populated with disks' do
      expect(hanoi.towers).to eq([[3, 2, 1], [], []])
    end
  end

  describe '#move' do
    subject(:testhanoi) { Hanoi.new([[3], [2, 1], []]) }

    it 'allows moves onto empty stacks' do
      testhanoi.move(1, 2)
      expect(testhanoi.towers).to eq([[3],[2],[1]])
    end

    it 'allows moves onto larger disks' do
      testhanoi.move(1, 0)
      expect(testhanoi.towers).to eq([[3, 1], [2], []])
    end

    it 'does not allow moves onto smaller disks' do
      let(:testhanoi2) { Hanoi.new([[3], [2], [1]]) }
      expect{ testhanoi2.move(0, 1) }.to raise_error(InvalidMoveError)
    end

    it 'does not allow moves from empty stacks' do
      expect { hanoi.move(1, 2) }.to raise_error(InvalidMoveError)
    end
  end

  describe '#won?' do
    let(:testhanoi3) { Hanoi.new([[], [], [3, 2, 1]]) }
    it 'plays until all disks are on final stack' do

      expect(testhanoi3).to be_won

    end
  end

end
#test move epxlicitly not through play
