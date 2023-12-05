require "colorize"
require "colorized_string"
require "io/console"
require "readline"

class ArrowMenu
  attr_reader :active_option, :options_hash, :title, :keys

  def initialize(title, options_hash)
    default_options_hash = {
      "Example" => proc { puts "This is an Example!" },
      "Quit" => proc { puts "Quitting Application" }
    }

    @options_hash = options_hash.nil? || options_hash.keys.count.zero? ? default_options_hash : options_hash
    @keys = @options_hash.keys
    @active_option = @keys[0]
    @title = title.nil? ? "ArrowMenu Title" : title
  end

  def set_active_option(active_key)
    unless @options_hash.key?(@active_option)
      puts "Invalid Key"
      @active_option = @options_hash.keys.first
    end
    @active_option = active_key
  end

  def render_menu
    system("cls")
    puts @title
    print_all_options

    active_option_index = @keys.find_index(@active_option)

    key = read_arrow_key # read the arrow key input (or enter / q)

    case key
    when "down"
      active_option_index = active_option_index >= 0 ? active_option_index + 1 : 0
      @active_option = active_option_index > (@keys.count - 1) ? @keys[@keys.count - 1] : @keys[active_option_index]

      render_menu

    when "up"
      active_option_index = active_option_index <= @keys.count - 1 ? active_option_index - 1 : @keys.count - 1
      @active_option = active_option_index >= (@keys.count - 1) ? @keys[@keys.count - 1] : @keys[active_option_index]

      render_menu
    when "enter"
      @options_hash[@active_option].call

    when "quit"
      puts "Exiting"
    end
  end

  def print_menu_option(option_name, is_active = false)
    "[#{is_active ? "×".colorize(:green) : " "}] >> " + option_name.colorize(is_active ? :green : :white) + "#{(is_active ? "  <{==[X]".colorize(:green) : "")}"
  end

  def print_all_options
    @options_hash.keys.each do |option|
      puts print_menu_option(option, option == @active_option)
    end
  end

  def select_option
    @options_hash.call(@active_option)
  end

  def read_arrow_key
    char = $stdin.getch

    case char
    when "\e"
      begin
        char << $stdin.read_nonblock(3)
      rescue StandardError
        puts "Error found in ArrowMenu#read_arrow_key, ending program"
        nil
      end
      case char
      when "\e[A"
        "up"
      when "\e[B"
        "down"
      when "\e[C"
        "right"
      when "\e[D"
        "left"
      end
    when "\r", "\n"# Enter key pressed, do something with the input      
      "enter"
    when "q"
      "exit"
    when "w", "W"
      "up"
    when "a", "A"
      "left"
    when "s", "S"
      "down"
    when "d", "D"
      "right"
    else
      read_arrow_key
    end
  end
end
