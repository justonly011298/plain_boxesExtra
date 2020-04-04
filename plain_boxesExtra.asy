import roundedpath;
/*
------------------ NOTE ------------------------
 The default value of Roundedpath is 0.1. If it is 0, having fail !
----------------- END NOTE ---------------------
*/
/*
------------------------------------------------


Initial version 4-4-2020
Includes:
 - Having Roundedpath:
   + psdiamond
   + psbevel
   + pstriangle
   + psManualInput
   + psparallelogram
   + pstrapezoid
   + psOffPageConnector
 - No Roundedpath:
   + pscircle
   + psdocument
   + psPunchedTape
   + psdisplay
   + psdelay
   + psStoredData
   + psterminal
// OLD version 16-1-2020
------------------------------------------------
*/
path psdiamond(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{

pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

path g=shift(m-(xmargin,ymargin))*((0,b/2)--(a/2,b)--(a,b/2)--(a/2,0)--cycle);
path g=roundedpath(g,Roundedpath);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psdiamond(frame f, Label L, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psdiamond(f,xmargin,ymargin,Roundedpath,p,filltype,above);
}
//------------------------------------------------
path pscircle(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{

pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

path g=shift(m-(xmargin,ymargin))*(circle((a/2,b/2),max(a,b)/2));

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path pscircle(frame f, Label L, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return pscircle(f,xmargin,ymargin,p,filltype,above);
}

//------------------------------------------------
//struct psbevel{
//  real abc;
//}
path psbevel(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{

pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;
real dw=min(a,b)*0.3; // From the roundbox command

path g=shift(m-(xmargin,ymargin))*((0,0)--(-dw,b/2)--(0,b)--(a,b)--(a+dw,b/2)--(a,0)--cycle);
path g=roundedpath(g,Roundedpath);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psbevel(frame f, Label L, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psbevel(f,xmargin,ymargin,Roundedpath,p,filltype,above);
}
//------------------------------------------------
//      ---------------  pstriangle  -----------
path pstriangle(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{

pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;
real dw=min(a,b)*0.7; 

path g=shift(m-(xmargin,ymargin))*((-dw,0)--(a+dw,0)--(a/2,b+dw)--cycle);
path g=roundedpath(g,Roundedpath);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path pstriangle(frame f, Label L, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return pstriangle(f,xmargin,ymargin,Roundedpath,p,filltype,above);
}
//------------------------------------------------
//      ---------------  psdocument  -----------
path psdocument(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{

pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

path g=shift(m-(xmargin,ymargin))*((0,0){dir(-40)}..(a/2,0){dir(40)}..(a,0)--(a,b)--(0,b)--cycle);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psdocument(frame f, Label L, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psdocument(f,xmargin,ymargin,p,filltype,above);
}
//------------------------------------------------
//      ---------------  psPunchedTape  -----------
path psPunchedTape(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{

pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

path Path=(0,b){dir(-40)}..(a/2,b){dir(40)}..(a,b);
path g=shift(m-(xmargin,ymargin))*((0,0){dir(-40)}..(a/2,0){dir(40)}..(a,0)--reverse(Path)--cycle);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psPunchedTape(frame f, Label L, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psPunchedTape(f,xmargin,ymargin,p,filltype,above);
}
//------------------------------------------------
//      ---------------  psManualInput  -----------
path psManualInput(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

path g=shift(m-(xmargin,ymargin))*( (0,b)--(a+0,b+min(a,b)*0.3)--(a,0)--(0,0)--cycle );
path g=roundedpath(g,Roundedpath);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psManualInput(frame f, Label L, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psManualInput(f,xmargin,ymargin,Roundedpath,p,filltype,above);
}
//------------------------------------------------
//      ---------------  psdisplay  ----------- 
path psdisplay(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{

pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

real dw=min(a,b)*0.3; // From the roundbox command
path pat=(a,b){dir(-45)}..(a+min(a,b)*0.2,b/2)..{dir(-135)}(a,0) ;
path g=shift(m-(xmargin,ymargin))*((0,0)--(a,0)--reverse(pat)--(0,b)--(-dw,b/2)--cycle);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psdisplay(frame f, Label L, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psdisplay(f,xmargin,ymargin,p,filltype,above);
}
//------------------------------------------------
//      ---------------  psdelay  -----------
path psdelay(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

real dw=min(a,b)*0.3;
path Path=arc((a,b/2)-dw,(a,0)-dw,(a,b)-dw);
path g=shift(m-(xmargin,ymargin))*((0,0)--(a,0)-dw..Path..(a,b)-dw--(0,b)--cycle);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psdelay(frame f, Label L, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psdelay(f,xmargin,ymargin,p,filltype,above);
}
//------------------------------------------------
//      ---------------  psparallelogram  -----------
path psparallelogram(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

real remainder=min(a,b)*0.3;
path g=shift(m-(xmargin,ymargin))*((0,0)--(a-remainder,0)--(a,b)--(remainder,b)--cycle);
path g=roundedpath(g,Roundedpath);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psparallelogram(frame f, Label L, real xmargin=0, real ymargin=xmargin,real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psparallelogram(f,xmargin,ymargin,Roundedpath,p,filltype,above);
}
//------------------------------------------------
//      ---------------  pstrapezoid  ----------- 
path pstrapezoid(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

real remainder=min(a,b)*0.3;
path g=shift(m-(xmargin,ymargin))*( (remainder,0)--(0,b)--(a,b)--(a-remainder,0)--cycle ); 
path g=roundedpath(g,Roundedpath);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path pstrapezoid(frame f, Label L, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return pstrapezoid(f,xmargin,ymargin,Roundedpath,p,filltype,above);
}
//------------------------------------------------
//      ---------------  psStoredData  -----------
path psStoredData(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

real dw=min(a,b)*0.2;
path pat1=(a+dw,b){dir(-135)}..(a,b/2)..{dir(-45)}(a+dw,0),
     pat2=(0+dw,b){dir(-135)}..(0,b/2)..{dir(-45)}(0+dw,0);
path g=shift(m-(xmargin,ymargin))*((0+dw,0)--(a,0)--reverse(pat1)--pat2--cycle);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psStoredData(frame f, Label L, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psStoredData(f,xmargin,ymargin,p,filltype,above);
}
//------------------------------------------------
//      ---------------  psterminal  -----------
path psterminal(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

real dw=min(a,b)*0.3;
path Path1=arc((a,b/2)-dw,(a,0)-dw,(a,b)-dw),
     Path2=arc((0,b/2)+dw,(0,b)+dw,(0,0)+dw);
path g=shift(m-(xmargin,ymargin))*((0,0)+dw--(a,0)-dw..Path1..(a,b)-dw--(0,b)+dw..Path2..(0,0)+dw--cycle);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psterminal(frame f, Label L, real xmargin=0, real ymargin=xmargin,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psterminal(f,xmargin,ymargin,p,filltype,above);
}
//------------------------------------------------
//      ---------------  psOffPageConnector  -----------
path psOffPageConnector(frame dest, frame src=dest, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
pair m=min(src);
pair M=max(src);
pair bound=M-m;
real a=bound.x+2*xmargin;
real b=bound.y+2*ymargin;

real dw=min(a,b)*0.3;
path g=shift(m-(xmargin,ymargin))*((a/2,-1.5dw)--(a,b/2-dw)--(a,b)--(0,b)--(0,b/2-dw)--cycle);
path g=roundedpath(g,Roundedpath);

frame F;
if(above == false) {
filltype.fill(F,g,p);
prepend(dest,F);
} else filltype.fill(dest,g,p);
return g;
}

path psOffPageConnector(frame f, Label L, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
add(f,L);
return psOffPageConnector(f,xmargin,ymargin,Roundedpath,p,filltype,above);
}
//------------------------------------------------

// Adding the option Roundedpath for the object's routines
//------------------------------------------------
typedef path envelope(frame dest, frame src=dest, real xmargin=0,
                      real ymargin=xmargin, real Roundedpath=0.1, pen p=currentpen,
                      filltype filltype=NoFill, bool above=true);

object object(Label L, envelope e, real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1,
pen p=currentpen, filltype filltype=NoFill, bool above=true)
{
object F;
F.L=L.copy();
Label L0=L.copy();
L0.position(0);
L0.p(p);
add(F.f,L0);
F.g=e(F.f,xmargin,ymargin,Roundedpath,p,filltype);
return F;
}

object draw(picture pic=currentpicture, Label L, envelope e,
real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1, pen p=currentpen,
filltype filltype=NoFill, bool above=true)
{
object F=object(L,e,xmargin,ymargin,Roundedpath,p,filltype,above);
pic.add(new void (frame f, transform t) {
frame d;
add(d,t,F.L);
e(f,d,xmargin,ymargin,Roundedpath,p,filltype,above);
add(f,d);
},true);
pic.addBox(L.position,L.position,min(F.f),max(F.f));
return F;
}

object draw(picture pic=currentpicture, Label L, envelope e, pair position,
real xmargin=0, real ymargin=xmargin, real Roundedpath=0.1, pen p=currentpen,
filltype filltype=NoFill, bool above=true)
{
return draw(pic,Label(L,position),e,xmargin,ymargin,Roundedpath,p,filltype,above);
}
////------------------------------------------------