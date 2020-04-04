import plain_boxesExtra;

unitsize(1cm);
size(300);
real margin=3mm;
defaultpen(fontsize(10pt));
pair A[]={(0,0),(0,-1),(1,0),(1,-1),(2,0),(2,-1)};
object O[];
for (int i=0; i<A.length; ++i){ O.push(draw("",pscircle,A[i],margin,invisible)); }
add(new void(frame f, transform t) {
  pen Pen=red+opacity(.5);
  fill(f,arc(point(O[0],(S+N)/2,t),point(O[0],dir(-160),t),point(O[0],dir(-20),t))--cycle,Pen);
  fill(f,arc(point(O[1],(S+N)/2,t),point(O[1],dir(-180),t),point(O[1],dir(0),t))--cycle,Pen);
  fill(f,arc(point(O[3],(S+N)/2,t),point(O[3],dir(-150),t),point(O[3],dir(-30),t))--cycle,Pen);
  fill(f,arc(point(O[4],(S+N)/2,t),point(O[4],dir(-150),t),point(O[4],dir(-30),t))--cycle,Pen);
  for (int i=0; i<A.length; ++i) 
    draw(f,circle(point(O[i],(S+N)/2,t),abs(point(O[i],(S+N)/2,t)-point(O[i],S,t))));
  picture pic;
  draw(pic,"$20$",point(O[0],S,t)--point(O[1],N,t),Arrow);
  draw(pic,"$10$",arc(point(O[1],W,t)-2mm,point(O[1],dir(135),t),point(O[1],dir(-135),t)),Arrow);
  draw(pic,Label("$21$",align=LeftSide),point(O[0],dir(30),t){dir(30)}..{dir(-30)}point(O[2],dir(150),t),Arrow);
  draw(pic,Label("$8$",align=LeftSide),point(O[2],dir(-150),t){dir(-150)}..{dir(150)}point(O[0],dir(-30),t),Arrow);
  draw(pic,Label("$4$",align=LeftSide),point(O[2],E,t)--point(O[4],W,t),Arrow);
  draw(pic,Label("$4$",align=LeftSide),point(O[2],S,t)--point(O[3],N,t),Arrow);
  draw(pic,point(O[4],dir(-45),t){dir(-60)}..{dir(-120)}point(O[5],dir(45),t),Arrow);
  draw(pic,point(O[5],dir(135),t){dir(120)}..{dir(60)}point(O[4],dir(-135),t),Arrow);
  add(f,pic.fit());
});