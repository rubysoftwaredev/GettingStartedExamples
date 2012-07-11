
f=File.open("input1","r")

i= 0
while line = f.gets
   print i
   print " Line num = " + i.to_s + line
   i += 1
end
   
