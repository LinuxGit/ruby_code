'ruby'.enum_for(:each_char).to_a
#=> ["r", "u", "b", "y"]
(1..10).enum_for(:each_slice, 3).to_a
#=> [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]
