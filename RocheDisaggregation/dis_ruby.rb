lines = []
File.open("00076133261002042050.txt") do |file|
	lines = file.readlines	
end

epcs = lines.map do |line|
	epcURI = "urn:epc:id:sgtin:"
	"<epc>"+ epcURI + line[3..10] +".0"+ line[11..14]+"."+line[18..30]+ "</epc>"
end
p epcs

#File.truncate("Proc_00076133261002042012.txt", 0)

File.open("Proc_00076133261002042050.txt", "w+") do |f|
  epcs.each { |element| f.puts(element) }
end