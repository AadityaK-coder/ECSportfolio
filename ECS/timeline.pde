// Aaditya Kuberan | 25 Feb 2026 | Timeline
void setup() {
  size(950,400);
}

void draw() {
  background(#64757A);
  drawRef();
  
  // Mathematically precise locations (including month offsets)
  // Formula: 50 + ((Year + (Month/12)) - 1985) * (850/41)
  histEvent(100, 200, "June 1987", true, "Messi was born in Rosario, Argentina, and began playing soccer at age four. \n He eventually moved to Spain so FC Barcelona could help treat his growth hormone deficiency.");   // x = 100
  histEvent(375, 300, "Sept. 2000", false, "He joined the Barcelona youth academy after a director famously signed his first contract on a paper napkin. \n This started his journey toward becoming a professional superstar."); // x = 375
  histEvent(459, 200, "Oct. 2004", true, "Messi made his official debut for the Barcelona first team at only 17 years old. \n He was one of the youngest players to ever represent the club in a competitive match.");   // x = 459
  histEvent(567, 300, "Dec. 2009", false, "He won his first Ballon d’Or award after helping Barcelona win every trophy possible in a single season. \n This officially marked him as the best player in the world.");  // x = 567
  histEvent(629, 200, "Dec. 2012", true, "Messi set a world record by scoring 91 goals in a single calendar year. \n This remains one of the most famous individual records in sports history.");   // x = 629
  histEvent(721, 300, "April 2017", false, "Messi scored his 500th official goal for FC Barcelona in the most dramatic way possible—a last-minute winner in El Clásico against Real Madrid. \n He celebrated by holding his jersey up to the Santiago Bernabéu crowd, creating one of the most famous images in football history.");  // x = 807
  histEvent(828, 200, "Dec. 2022", true, "Messi captained Argentina to a World Cup victory in Qatar and was named the tournament's best player. \n Many consider this the moment he became the greatest player of all time.");   // x = 828
  histEvent(848, 300, "July 2023", false, "He moved to the United States to play for Inter Miami CF in Major League Soccer. \n He led the team to their first-ever trophy just a few weeks after joining.");  // x = 848
}

void drawRef() {
  textAlign(CENTER);
  textSize(36);
  text("Lionel Messi: Timeline", width/2,70);
  textSize(20);
  text("by Aaditya Kuberan", width/2,90);
  
  strokeWeight(5);
  line(50, 250, 900, 250);
  
  textSize(16);
  text("1985", 50, 275);
  text("2003", 423, 275); // Precise location for start of 2003 (x = 423)
  text("2026", 900, 275);
  
  strokeWeight(2);
  line(50, 240, 50, 260);
  line(900, 240, 900, 260);
  line(423, 240, 423, 260); // 2003 tick mark
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top == true) {
    
    line(x,y,x-15,y+50);
  } else {
  line(x,y,x-15,y-50);
}
  rectMode(CENTER);
  fill(#86BECF);
  strokeWeight(2);
  rect(x,y,100,30,10);
  fill(#192D33);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
   text(detail, width/2,350);
  }

}
