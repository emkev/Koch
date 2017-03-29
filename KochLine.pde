
/* 2017.03.25
   2017.03.29
*/

class KochLine {

  PVector start ;
  PVector end   ;
  
  KochLine( PVector a , PVector b ) {
    start = a.get() ;
    end   = b.get() ;
  }
  
  void display() {
    stroke(0);
    line( start.x , start.y , end.x , end.y ) ;
  }
  
  // kochA
  PVector getStart() {
    return start.get() ;
  }
  
  // kochE
  PVector getEnd() {
    return end.get() ;
  }
  
  // kochB
  PVector kochLeft() {
    PVector v = PVector.sub( end , start ) ;
    v.div(3) ;
    v.add(start) ;
    return v ;
  }
  
  // kochC
  PVector kochMiddle() {
    
    PVector v = PVector.sub( end , start ) ;
    v.div(3);
    
    PVector a = start.get() ;
    a.add(v);
    
    v.rotate( (-1)*radians(60) ) ;
    a.add(v) ;
    
    return a ;
    
  }
  
  // kochD
  PVector kochRight() {
    PVector v = PVector.sub( end , start ) ;
    v.mult( 2/3.0 ) ;
    v.add(start);
    return v ;
  }
  
}
