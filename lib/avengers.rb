# type the first name or last name of a hero to check if he or she is an avenger
class Avengers
  def initialize(name)
    @name = name
    @is_avenger = false
  end

  def avenger?
    true if (%w[tony stark peter parker thor steve rogers natasha romanoff bruce banner clint barton].to_s).include?(@name)
  end

  def message
    if avenger?
      return '✔️  Tony Stark is Iron Man 😎' if %w[tony stark].to_s.include?(@name)
      return '✔️  Bruce Banner is Hulk 🤢' if %w[bruce banner].to_s.include?(@name)
      return '✔️  Natasha Romanoff if Black Widow 👩' if %w[natasha romanoff].to_s.include?(@name)
      return '✔️  Peter Parker is Spider Man 🕷️' if %w[peter parker].to_s.include?(@name)
      return '✔️  Thor is an Avenger ⚒️' if @name == 'thor'
      return '✔️  Steve Rogers is Captain America 🛡️' if %w[steve rogers].to_s.include?(@name)
      return '✔️  Clint Barton is Hawkeye 🏹' if %w[clint barton].to_s.include?(@name)
    end
    return "❌ #{@name} is not an avenger" unless avenger?
  end
end

10.times do
  puts 'Tell me a name'
  hero = gets.chomp.downcase
  avenger = Avengers.new(hero)
  puts avenger.message
  puts
end
