import csv
import sys

myfile  = open(sys.argv[1], "rb")
parser = csv.reader(myfile)
writer = open('hw5_load.sql','a')

rownum = 0
for row in parser:
  	# Save header row.
   	if rownum == 0:
        	header = row
    	else:
        	colnum = 0
        	for col in row:
			if colnum==0:
				colname= col.replace('\'','\'\'')
				colnum +=1
            		else:
				if(col== '-'):
					col=''
				if (not col):
					col="null"
					print >> writer, 'Insert into %s VALUES (\'%s\', \'%s\', %s);' % (sys.argv[2], colname, header[colnum], col)
            				colnum += 1
				else:
					print>> writer, 'Insert into %s VALUES (\'%s\', \'%s\', \'%s\');' % (sys.argv[2], colname, header[colnum],  col)
            				colnum += 1
            
    	rownum += 1

myfile.close()
