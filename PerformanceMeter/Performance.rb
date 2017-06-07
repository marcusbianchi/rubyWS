require 'net/http'

#create and Run N threadas
n = 100

def func_get thread_name 
	t1 = Time.now
	uri = URI('http://servti02:8047/api/Prediction?Id=1&descMetric=Producao')
	#http = Net::HTTP.new()
	puts Net::HTTP.get(uri) # => String
	t2 = Time.now
	delta = t2 - t1 # in seconds
	puts "Thread #{thread_name} execution time #{delta}\n"
end
while(true)
(0..n).each do |i|
	Thread.new{func_get(i)}
	sleep(0.01)
end
end


