
/* base on Daniel Shiffman 's code 
   2017.03.25
*/

ArrayList<KochLine> lines ;

void setup() {

  size( 383 , 200 ) ;
  background(255) ;
  
  lines = new ArrayList<KochLine>() ;
  
  PVector start = new PVector( 0 , 150 ) ;
  PVector end   = new PVector( width , 150 ) ;
  
  lines.add( new KochLine(start,end) ) ;
  
  for( int i = 0 ; i < 3 ; i++) {
    generate();
  }
  
  smooth();
}


void draw() {
  background(255);
  for( KochLine l : lines ) {
    l.display() ;
  }
}


void generate() {
  
  ArrayList next = new ArrayList<KochLine>() ;
  
  for( KochLine l : lines ) {

    PVector a = l.getStart() ;
    PVector b = l.kochLeft() ;
    PVector c = l.kochMiddle() ;
    PVector d = l.kochRight() ;
    PVector e = l.getEnd() ;
    
    next.add( new KochLine(a,b) ) ;
    next.add( new KochLine(b,c) ) ;
    next.add( new KochLine(c,d) ) ;
    next.add( new KochLine(d,e) ) ;
  }
  
  lines = next ;
  
}

