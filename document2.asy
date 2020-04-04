import plain_boxesExtra;

unitsize(1cm);
size(300);
defaultpen(fontsize(10pt));
usepackage("amsmath");
usepackage("amsfonts");
usepackage("amssymb");
pair z0=(-1.75,0), z1=(1.75,0), z2=(0,1), z3=(0,-1);
object boite1=draw(Label("$x \geqslant -3$",Fill(red+opacity(.5))),psOffPageConnector,z2,3mm,FillDraw(invisible,blue+opacity(.5)));
object boite2=draw("$\times (-2)$",psdisplay,z0,1mm);
object boite3=draw(Label(minipage("\center{Example \\ Start:}",50pt),position=(-0.5,3),green),psdisplay,z1,ymargin=2mm);
object boite4=draw("Hello World",psterminal,z3,5mm,p=red+opacity(.5));

add(new void(picture pic, transform t) {
draw(pic,point(boite1,W,t){W}..{S}point(boite2,N,t));
draw(pic,point(boite2,S,t){S}..{E}point(boite4,W,t),Arrow);
draw(pic,point(boite1,E,t){E}..{S}point(boite3,N,t));
draw(pic,point(boite3,S,t){S}..{W}point(boite4,E,t),Arrow);
});