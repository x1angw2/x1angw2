import PyPDF2
from PyPDF2 import PdfFileReader,PdfFileMerger
merger = PdfFileMerger()
input1 = open("1.pdf","rb")
input2 = open("2.pdf","rb")
merger.append(fileobj = input1,pages = (0,3))
merger.merge(position = 2,fileobj = input2,pages = (0,1))
output = open("3.pdf","wb")
merger.write(output)
