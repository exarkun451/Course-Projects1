$depth = 0
def lagger block_name, &block
  indent = '  '*$depth
  puts indent + "Beginning #{block_name}..."
  $depth += 1
  result = block.call
  $depth -= 1
  puts indent + "... #{block_name} finished, returning: " + result.to_s
end

lagger 'Just an outie!' do
  lagger 'innie block!' do
      lagger "even deeper" do
         "I AM THE DEEPEST! WHOOT!"
        end
  lagger 'simple calculation!' do
     1+2
    end
      "I am an innie!"
    end
     "I am an outie!"
  end
