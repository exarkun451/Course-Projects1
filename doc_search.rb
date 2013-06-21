Dir.chdir '/Users/jacquelinelisle/Desktop/Test-Dump'
documents = Dir['../*.{.odt}']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{documents.length} files: "
document_number = 1
documents.each do |name| 
  print '.'
  new_name = if documents < 10
  	"#{batch_name}0#{document_number}.odt"
  	else
  	"#{batch_name}#{document_number}.odt"
  	end
 File.rename name, new_name
 document_number += 1
 end 	
  