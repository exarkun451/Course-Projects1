class Orange_Tree
  def initialize
    @height = 1
    @oranges = 0
    @age = 1
    puts "Wow! Look at that, an orange tree!"
  end
  def count_oranges
    puts @oranges
  end
  def pick_orange
    if @oranges > 0
      @oranges -= 1
      puts "Tan rico."
    else
      puts "There are no more oranges on the tree."
    end
  end
  def grow
    @height += 3
    @age += 1
    if @age > 3
      @oranges = @age*@height
    end
    if @age > 50
      puts "Oh dear, the orange tree died."
      exit
    end
  end
end

tree = Orange_Tree.new
tree.count_oranges
tree.grow
tree.grow
tree.grow
tree.grow
tree.count_oranges
tree.pick_orange
tree.pick_orange
50.times do tree.grow end