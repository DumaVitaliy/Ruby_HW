a=[1,2,3,4,5,6,7]
def reverse(a)
b=[]
b<<a.pop until a.empty?
b
end
puts reverse(a)
