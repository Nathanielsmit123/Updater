require 'colorize'
message = "Booting up BitBodo..."
puts message.red
boot = File.readlines("boot.txt")
x = 0
loop do 
    if boot[x] == nil
        break
    else
        system("clear")
        puts boot[x]
        sleep(1.5)
        x = x + 1
    end
end
sleep(1)
print "/----------\\ \n".yellow
print "|  ".yellow
print "|    |".gray
print "  |     ".yellow
print " _".blue
print "|".green
print "_  ".red
print "   /_  . -/-\n".cyan
print "|".yellow
print "    -- ".gray
print "   |".yellow
print "       | ".yellow
print "   _/_)_/__/_\n".cyan
puts"\\----------/".yellow
puts "Welcome to BitBodo 0.2.0!"
dir = " Home"
loop do
    print "BitBodo#{dir}~> "
    message = gets.chomp
    if message.include?("pkg install ")
        pkg = message.split.last
        if pkg == "r-box"
            system("git clone https://github.com/Nathanielsmit123/BitDodo")
            system("mv BitDodo R-Box")
        else
        end
    end
    if message.include?("pkg run ")
        pkg = message.split.last
        if pkg == "r-box"
            system("ruby R-Box/R-bo/user*/dodo.2.0")
        else
        end
    end
    if message == "pkg update"
        system("git clone https://github.com/Nathanielsmit123/Updater.git")
        system("mv Updater/'untitled folder 3'/text.rb bit.rb")
        system("rm boot.txt")
        system("mv Updater/'untitled folder 3'/boot.txt boot.txt")
        system("rmdir Updater/'untitled folder 3'")
        system("rm Updater/README.md")
        system("rmdir Updater")
        system("rm text.rb && mv bit.rb text.rb && ruby text.rb")
    end
end