# Script is to make a list of epoisdes / chapter 

def epoisdeCount(typeofcontact,numberofepoisdes):
    # Making a file 
    f = open('/home/bruce/Documents/content.txt', 'w')    
    i = 1
    while(i <= numberofepoisdes):
        filetxt = "- [ ] " + typeofcontact + "-" + str(i) + '\n'
        f.write(str(filetxt))   
        i += 1
    
    f.close()

# Asking for input  
content_type = input("What is type content?\n"+"Options:anime,book,manga,cartoon")
number_epoisdes = input("How many chapters/epoisdes does this content have?\n")

if content_type == "anime":
    epoisdeCount("Epoisde",int(number_epoisdes))
elif content_type == "manga":
    epoisdeCount("Chapter",int(number_epoisdes))
elif content_type == "cartoon":
    epoisdeCount("Epoisde",int(number_epoisdes))
elif content_type == "book":
    epoisdeCount("Chapter",int(number_epoisdes))
else:
    print("incorrect input");    

