import os

i=0
while os.path.exists("test%s.mp4" % i):
    i +=1

fh = open("test%s.mp4" % i, "w")
