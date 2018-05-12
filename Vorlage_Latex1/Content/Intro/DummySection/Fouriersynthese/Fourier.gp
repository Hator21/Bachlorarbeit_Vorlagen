#This is free and unencumbered software released into the public domain.
#
#Anyone is free to copy, modify, publish, use, compile, sell, or
#distribute this software, either in source code form or as a compiled
#binary, for any purpose, commercial or non-commercial, and by any
#means.
#
#In jurisdictions that recognize copyright laws, the author or authors
#of this software dedicate any and all copyright interest in the
#software to the public domain. We make this dedication for the benefit
#of the public at large and to the detriment of our heirs and
#successors. We intend this dedication to be an overt act of
#relinquishment in perpetuity of all present and future rights to this
#software under copyright law.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
#EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
#MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
#IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
#OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
#ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
#OTHER DEALINGS IN THE SOFTWARE.
#
#For more information, please refer to <http://unlicense.org>


# To make a .tex and .eps file texlive-eepic and texlive-bxeepic needs to be installed
set terminal epslatex color size 16cm, 9cm

# The name an location of the .tex and .eps file
set output "FourierOut.tex"

# The title of the graph
set title "\\sc Eine Sinus Kurve und deren Fouriersynthese"

# The lable for the x axsis
set xlabel "$x$-Achse"

# The lable and rotation for the y axsis
set ylabel "$y$-Achse" rotate by 0

# The position of the key
set key left top

# set the range from x=-Pi..Pi and y=-1..1
set xrange [-pi:pi]
set yrange [-1:1]

# Set the marking for x and y axsis to latex math mode (looks better)
set format y "$%g$"
set format x "$%.P ~\\pi$"

# Start the x axsis marking at -Pi and mark at a Pi  interval
set xtics -pi, pi

# Start the y axsis marking at -1 and mark every number
set ytics -1, 0.5

# The Fourier function
f(x,a)= sum [i=0:a] (1.0/(i*2+1)) * sin(x*((i*2+1)))

# Change the linetype (lt) to solid and the line color (lc) and the linewith (lw)
plot \
f(x,0) lt 1 lc 1 lw 2 title "$n=0$",\
f(x,2) lt 1 lc 2 lw 2 title "$n=2$",\
f(x,4) lt 1 lc 3 lw 2 title "$n=4$",\
f(x,6) lt 1 lc 4 lw 2 title "$n=6$"