require_relative "item"

class Main
  def initialize
    @items = []
  end

  def run
    puts "Welcome to the packing app!"

    loop do
      if @items.empty?
        puts "You do not have any items. Type 'add' to add an item."
      else
        puts 'Type "add", "list", "pack" or "exit"'
      end

      task = gets.chomp

      case task

      when "add"
        add()
      when "list"
        list()
      when "pack"
        pack()
      when "exit"
        puts "Thank you for using the packing app!"
        break
      else
        puts "Invalid entry."
      end
    end
  end

  def add
    puts "What item would you like to add to your list?"
    name = gets.chomp
    item = Item.new(name)
    @items.push(item)
    puts "#{item.to_s} has been added to your packing list"
  end

  def list
    if @items.empty?
      puts "You do not have any items."
    else
      @items.each do |item|
        puts item.name_status_to_s
      end
    end
  end

  def pack
    puts "Which item would you like to pack?"
    item = gets.chomp
    item = @items.find { |i| i.name == item}
    if item
      item.pack
    else
      puts "Item not found"
    end
  end


end
