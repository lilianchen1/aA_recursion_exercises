def eval_block(*args, &prc)
  if prc.nil?
    puts "NO BLOCK GIVEN"
  else
    prc.call(*args)
  end
end


eval_block("Kerry", "Washington", 23) do |fname, lname, score|
  puts "#{lname}, #{fname} won #{score} votes."
end
