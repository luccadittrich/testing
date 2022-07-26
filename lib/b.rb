def loop_odd
  numbers = []
  a = (1..100).to_a
  a.each do |n|
    numbers << n if n.odd?
  end
  numbers
end
