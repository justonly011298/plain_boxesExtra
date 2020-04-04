//check
import math;
import plain_boxesExtra;

size(10cm,0);
unitsize(1cm);

add(shift((-1,-1))*grid(9,9,blue+dashed+0.5pt));
//---------------------------------------------
object Box=draw(Label("Document",position=(0,0),p=red),psdocument,ymargin=3mm);
object Ellipse=draw(Label(minipage("\center{Punched \\ tape}",50pt),position=(0.5,3)),
                    xmargin=2mm,ymargin=5mm,filltype=FillDraw(cyan+opacity(.5),blue+dashed),psPunchedTape);
object Jbox=draw(Label("Hello",position=(0.5,5),green),xmargin=2mm,Roundedpath=3,
                 filltype=FillDraw(cyan+opacity(.5),blue),pstriangle);
object Tbox=draw(Label(minipage("\center{Computer\\display}",80pt),position=(1,7)),
                 xmargin=-3mm,ymargin=1mm,filltype=FillDraw(cyan+opacity(.5),currentpen),psdisplay);
object Tboxx=draw(Label(minipage("\center{Stored \\ data}",50pt),position=(2.5,0)),
                 xmargin=-1mm,ymargin=2mm,filltype=FillDraw(cyan+opacity(.5),currentpen),psStoredData);
object Dbox=draw(Label(minipage("\center{Receive \\ data}",50pt),position=(5,0)),Roundedpath=3,
                 xmargin=3mm,ymargin=2mm,filltype=FillDraw(cyan+opacity(.5),blue),psparallelogram);
object Box1=draw(Label("Document",position=(3,3),p=red),pstrapezoid,Roundedpath=3,xmargin=3mm);//---------------------------------
object Ellipse1=draw(Label(minipage("\center{Punched \\ tape}",50pt),position=(2.5,4)),
                 xmargin=2mm,ymargin=5mm,filltype=FillDraw(cyan+opacity(.5),blue+dashed),Roundedpath=3,psManualInput);
object Jbox1=draw(Label("Hello",position=(4.5,5)),Roundedpath=3,
                 xmargin=5mm,filltype=FillDraw(cyan+opacity(.5),blue+dashed),psOffPageConnector);
object Tbox2=draw(Label(minipage("\center{Computer\\display}",80pt),position=(4,7)),
                 xmargin=-3mm,ymargin=1mm,filltype=FillDraw(cyan+opacity(.5),currentpen),psdelay);
object Tbox1=draw(Label(minipage("\center{Stored \\ data}",50pt),position=(6.5,7)),
                 xmargin=-1mm,ymargin=2mm,filltype=FillDraw(cyan+opacity(.5),currentpen),psterminal);
object Dbox1=draw(Label(minipage("\center{Receive \\ data}",50pt),position=(6.5,4)),
                 xmargin=4mm,filltype=FillDraw(cyan+opacity(.5),blue),psdiamond);
object Box1=draw(Label("End",position=(5,3),p=red),pscircle,xmargin=1mm);//---------------------------------
object Box1=draw(Label("End",position=(3,1.5),p=red),psbevel,xmargin=1mm,Roundedpath=3);
object Box1=draw(Label("psbox",position=(6,1.5),p=red),box,xmargin=1mm);
shipout(bbox(2mm,invisible));