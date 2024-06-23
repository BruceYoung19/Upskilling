#opening a file
file = open("testing.txt","w")

#writing to the file
file.write("I hope this works")
file.close()

#reading from a text
file = open("testing.txt","r")
print(file.read())
file.close()
