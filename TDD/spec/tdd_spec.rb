# require 'rspec'
# require 'tdd'
#
# describe '#my_uniq' do
#
#   it "returns an array with no duplicates" do
#     expect([1, 2, 1, 3, 3].my_uniq).to match_array([1, 2, 3])
#   end
#
#
#   it "does not modify the original array" do
#     parisa = [1, 2, 1, 3, 3]
#     parisa.my_uniq
#     expect(parisa).to eq([1, 2, 1, 3, 3])
#   end
#
#   it "returns elements in original order" do
#     expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
#   end
#
#   context "when given an empty array" do
#     it "returns an empty array" do
#       expect([].my_uniq).to eq([])
#     end
#   end
# end
#
# describe "#two_sum" do
#   it "returns indices whose corresponding elements sum to zero" do
#     expect([-1, 1].two_sum).to match_array([[0, 1]])
#   end
#
#   it "returns sorted pairs" do
#     expect([1, -1].two_sum).to eq([[0, 1]])
#   end
#
#   it "returns an array of pairs sorted 'dictionary-wise'" do
#     expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
#   end
# end
#
# describe 'my_transpose' do
#
#   it "transposes matrices" do
#     matrix  = [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ]
#   expect(my_transpose(matrix)).to eq(
#      [[0, 3, 6],
#       [1, 4, 7],
#       [2, 5, 8]])
#   end
# end
#
# describe 'stick_picker' do
#
#   it "returns the optimal buying pair" do
#      expect(pick_stocks([3, 2, 5, 0, 6])).to eq([3, 4])
#   end
#
#
#   it "returns an empty array when stock prices are in decline" do
#     expect(pick_stocks([5, 4, 3, 2, 1])).to eq([])
#   end
#
#
# end
