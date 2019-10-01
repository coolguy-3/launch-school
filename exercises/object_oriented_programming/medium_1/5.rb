class String
  def is_i?
    /\A[-+]?\d+\z/ === self
  end
end
class Minilang
  def initialize string
    @commands = string
    @stack = []
    @register = 0
    @error = false
  end
  
  def eval
    @commands.split.each do |command|
      if @error != true
        execute command
      end
    end
  end
  
  def execute command
    if command.is_i?
      register command.to_i
    else
      case command
      when 'PUSH' then push
      when 'ADD' then add
      when 'SUB' then sub
      when 'MULT' then mult
      when 'DIV' then div
      when 'MOD' then mod
      when 'POP' then pop
      when 'PRINT' then print
      else
        puts "invalid token: #{command}"
        @error = true
      end
    end
  end
    
  def register num
    @register = num
  end
  
  def push
    @stack << @register
  end
  
  def add
    @register += @stack.pop
  end
  
  def sub
    @register -= @stack.pop
  end
  
  def mult
    @register *= @stack.pop
  end
  
  def div
    @register /= @stack.pop
  end
  
  def mod
    @register %= @stack.pop
  end
  
  def pop
    if @stack == []
      puts 'empty stack'
      @error = true
    else
      @register = @stack.pop
    end
  end
  
  def print
    puts @register
  end
end

Minilang.new('PRINT').eval
Minilang.new('5 PUSH 3 MULT PRINT').eval
Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
Minilang.new('5 PUSH POP POP PRINT').eval
Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
Minilang.new('-3 PUSH 5 XSUB PRINT').eval
Minilang.new('-3 PUSH 5 SUB PRINT').eval
Minilang.new('6 PUSH').eval
