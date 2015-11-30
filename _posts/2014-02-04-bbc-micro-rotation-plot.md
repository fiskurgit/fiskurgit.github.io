---
title: BBC Micro – Rotation plot
author: fiskur
layout: post
permalink: /bbc-micro-rotation-plot
panels_data:
  - 'a:0:{}'
videourl:
  - 
categories:
  - bbc micro
---
<img class="alignnone size-full wp-image-158" alt="bbc_2_12305916544_7e457ebbe0_b" src="http://fiskur.eu/wp-content/uploads/2014/02/bbc_2_12305916544_7e457ebbe0_b.jpg" width="612" height="612" />

<script src="https://gist.github.com/fiskurgit/8804703.js"></script>

From &#8216;Practical Programs for the BBC Micro&#8217; by David Johnson-Davies

Created with the Fiskur BBC Micro Android app.

For completeness and to explain the code the text from the book is copied below:

*This program plots a three-dimensional view of a surface using high-resolution graphics, To give a solid appearance to the surface, lines which lie behind the surface are not plotted; in other words, the program incorporates &#8216;hidden-line removal&#8217;. The function for evaluation is given in line 80 of the two versions of the program, and can be any surface of revolution, in which the height, Q is simply a function of the radius from the centre, R.*

*As an example, the equation:*

`Q=(R-1)*SIN(24*R)`

*where the SIN function gives a rippled effect, and the (R-1) factor causes the ripples to die away towards the edge.*

***BBC Computer Version***

*The BBC Computer version uses the medium-resolution graphics mode, with a resolution of 320&#215;256. The origin is set to 640,512, the centre of the virtual graphics screen.*

`1 REM ... Rotation ... `

*Set up graphics resolution.*

`10 MODE 4: VDU 29,640;512;: XS=4: YS=4<br />
20 A=640: B=A*A: C=512`

*Plot for every X coordinate.*

`30 FOR X=O TO A STEP XS: S=X*X: P=SQR(B-S)<br />
50 FOR I=-P TO P STEP 6*YS`

*Calculate R = distance from centre and solve function; Q = height. Give Y coordinate, with correct perspective.*

`70 R=SQR(S+I*I)/A<br />
80 Q=(R-1)*SIN(24*R)<br />
90 Y=I/3+Q*C`

*For first point, set maximum and minimum.*

` 95 IF I=-P THEN M=Y: GOTO 110<br />
l00 IF Y>M M=Y: GOTO 130<br />
105 IP Y>=N GOTO 140<br />
110 N=Y`

*Plot points symmetrically each side of centre.*

`130 PLOT69,-X,Y: PLOT69,X,Y<br />
140 NEXT I: NEXT X<br />
150 END`

***Variables:***

*A &#8211; X resolution*  
* B &#8211; Square of X resolution*  
* C &#8211; Y resolution*  
* I &#8211; Distance along X axis*  
* M &#8211; Highest point plotted*  
* N &#8211; lowest point plotted*  
* Q &#8211; height of function*  
* R &#8211; radius from centre*  
* X &#8211; X coordinate from centre*  
* Y &#8211; Y coordinate*  
* XS,YS &#8211; Virtual points per screen point*

***Further Suggestions***

*Another function can be obtained by altering lines 80 and 90 of the programs to:*

`80 Q=COS(R*5)*EXP(-R)<br />
90 Y=I/3-Q*C-5`