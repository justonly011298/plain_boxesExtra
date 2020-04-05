unitsize(1cm);
size(300);
import patterns; // for drawing patterns
real margin=2mm;
pair z1=(0,1);
pair z0=(0,0);

path EllipseArc(pair c, real a, real b, real Eangle1, real Eangle2, bool direction=CCW)
{
return scale(a,b)*arc(c,1,Eangle1,Eangle2,direction);
}

object Box=draw("small box",box,z1,margin);
object Ellipse=draw("LARGE ELLIPSE",ellipse,z0,margin,invisible);

add("hachure",crosshatch(H=2mm,gray));

add(new void(frame f, transform t) {
draw(f, point(Box,S,t){S}..{S}point(Ellipse,N,t) );
dot(f,point(Box,(S+N)/2,t),red);
fill(f,point(Box,S,t)--(point(Box,E,t).x,point(Box,S,t).y)--point(Box,E,t)--cycle,pattern("hachure"));
pair EO=point(Ellipse,(S+N)/2,t);
path D=EllipseArc(EO,abs(EO-point(Ellipse,E,t)),abs(EO-point(Ellipse,N,t)),270,360);
fill(f,D--cycle,red);
draw(f,ellipse(EO,abs(EO-point(Ellipse,E,t)),abs(EO-point(Ellipse,N,t))));
});