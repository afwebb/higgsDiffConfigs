'''
Plot input features of a dataset, correlation matrix
Save as .pdf, and write latex file with plots included in plots/<out string> directory
Usage: python3.6 featurePlots.py <input dataset.csv> <out string>
'''

import sys, os

inPath = sys.argv[1]
outDir = sys.argv[2]
fileList = os.listdir(inPath)
fileList = [inPath + '/' + x for x in fileList]

texfile = open('texPlots_'+outDir+".tex", "w")

print('\\documentclass[hyperref={pdfpagelayout=SinglePage}]{beamer}\\usetheme{Warsaw}\\usepackage{euler}\\usepackage{pgf}\\usecolortheme{crane}\\usefonttheme{serif}\\useoutertheme{infolines}\\usepackage{epstopdf}\\usepackage{xcolor}\\usepackage{multicol}\\title{Plots}', file=texfile)
print('\\begin{document}', file=texfile)

icount = 1
for f in fileList:
    if "Summary" in f:
        continue
    if icount % 6 == 1:
        print('\\frame{', file=texfile)
    print(r'\includegraphics[width=.29\linewidth]{%s}' % (f) + ('%'if (icount % 3 != 0) else r'\\'), file=texfile)
    if icount % 6 == 0:
        print('}\n', file=texfile)
    icount += 1

if icount %4 != 1:
    print('}\n', file=texfile)

print('\end{document}', file=texfile)
texfile.close()
