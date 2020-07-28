require './snail_sort.rb'

test_object = {
  test_1: {
    array: [
      [1, 2, 3],
      [8, 9, 4],
      [7, 6, 5]
    ],
    expected_result: (1..9).to_a
  },

  test_2: {
    array: [
      [1, 2, 3, 4],
      [12, 13, 14, 5],
      [11, 16, 15, 6],
      [10, 9, 8, 7],
    ],
    expected_result: (1..16).to_a
  }
}

test_object.each do |key, test|
  puts key
  puts '-----'

  if snail_sort(test[:array]) == test[:expected_result]
    puts 'PASS'
  else
    puts 'FAIL'
    puts "Expected: #{test[:expected_result]}"
    puts "Recieved: #{snail_sort(test[:array])}"
  end
end
