setup = function() {
    size(400, 600); 
    background(176,140,151);
    

    
};




draw = function(){

var squareX = 0
var flowerX = 0


while(squareX < 400){
drawTileSquare(squareX + 10, 10);
drawTileSquare(squareX + 10, 207);
drawTileSquare(squareX + 10, 405)

squareX+=197;
}


while(flowerX < 400){
drawFlower(flowerX + 100, 70);
drawFlower(flowerX + 100, 270);
drawFlower(flowerX + 100, 470)

flowerX+=197;
}


for(var cornerX = 0; cornerX < 400; cornerX+= 197){
drawCorners(cornerX + 10, 10);
drawCorners(cornerX + 10, 207);
drawCorners(cornerX + 10, 405);
}


}





var drawTileSquare = function(tileX,tileY){


stroke(142,115,116)
fill(122,95,96)
rect(tileX-2,tileY-2, 187, 191)

stroke(235,241,230)
fill(235,241,230)
rect(tileX,tileY, 183, 183)


stroke(255,255,255)
line(tileX, tileY, tileX+180, tileY)

stroke(198,191,184)
line(tileX, tileY+183, tileX+180, tileY+183)
}




var drawFlower = function(flowerX,flowerY){

fill(0,17,135)
stroke(0,17,135)


ellipse(flowerX, flowerY, 26, 25)

ellipse(flowerX+23, flowerY+12, 26, 25)
ellipse(flowerX-23, flowerY+12, 26, 25)
ellipse(flowerX-35, flowerY+36, 25, 26)
ellipse(flowerX+35, flowerY+36, 25, 26)
ellipse(flowerX-23, flowerY+59, 26, 25)
ellipse(flowerX+23, flowerY+59, 26, 25)
ellipse(flowerX, flowerY + 71, 26, 25)



ellipse(flowerX+9, flowerY+13, 17, 17)
ellipse(flowerX-9, flowerY+13, 17, 17)
ellipse(flowerX-22, flowerY+27, 17, 17)
ellipse(flowerX+22, flowerY+27, 17, 17)
ellipse(flowerX+22, flowerY+45, 17, 17)
ellipse(flowerX-22, flowerY+45, 17, 17)
ellipse(flowerX+9, flowerY+59, 17, 17)
ellipse(flowerX-9, flowerY+59, 17, 17)


fill(0,6,100)
stroke(0,6,100)

ellipse(flowerX - 80, flowerY + 45, 9,9)
ellipse(flowerX - 80, flowerY + 25, 9,9)
ellipse(flowerX - 65, flowerY + 35, 9,9)

ellipse(flowerX + 80, flowerY + 45, 9,9)
ellipse(flowerX + 80, flowerY + 25, 9,9)
ellipse(flowerX + 65, flowerY + 35, 9,9)

ellipse(flowerX - 10, flowerY - 50, 9,9)
ellipse(flowerX + 10, flowerY - 50, 9,9)
ellipse(flowerX, flowerY - 35, 9,9)

ellipse(flowerX - 10, flowerY + 110, 9,9)
ellipse(flowerX + 10, flowerY + 110, 9,9)
ellipse(flowerX, flowerY + 95, 9,9)



fill(229,71,6)
stroke(229,71,6)
ellipse(flowerX, flowerY+36, 18, 18)
}






var drawCorners = function(cornerX,cornerY){


stroke(19,50,81)
fill(19,50,81)


rect(cornerX+6,cornerY, 30, 4)
rect(cornerX,cornerY+2, 4, 30)
arc(cornerX+9,cornerY+5, 55, 25, radians(0), radians(90)); 
arc(cornerX+5,cornerY+5, 25, 55, radians(0), radians(90));


rect(cornerX,cornerY+179, 35, 4)
rect(cornerX,cornerY+153, 5, 29)
arc(cornerX+5,cornerY+181, 25, 55, radians(270), radians(360)); 
arc(cornerX+8,cornerY+180, 55, 25, radians(270), radians(360)); 

rect(cornerX+147,cornerY+179, 33, 4)
rect(cornerX+179,cornerY + 152, 4, 29)
arc(cornerX+179,cornerY + 180, 25, 55, radians(180), radians(270)); 
arc(cornerX+174,cornerY + 178, 55, 25, radians(180), radians(270));

rect(cornerX+147,cornerY+0, 33, 4)
rect(cornerX+179,cornerY +2, 4, 30)
arc(cornerX+175,cornerY + 5, 55, 25, radians(90), radians(180)); 
arc(cornerX+180,cornerY + 5, 25, 55, radians(90), radians(180)); 



fill(236,104,55)
stroke(236,104,55)

rect(cornerX+4,cornerY, 30, 4)
rect(cornerX,cornerY, 4, 30)
arc(cornerX+9,cornerY+5, 50, 20, radians(0), radians(90)); 
arc(cornerX+5,cornerY+5, 20, 50, radians(0), radians(90));

rect(cornerX,cornerY+178, 33, 4)
rect(cornerX,cornerY+156, 4, 27)
arc(cornerX+5,cornerY+181, 20, 50, radians(270), radians(360)); 
arc(cornerX+8,cornerY+180, 50, 20, radians(270), radians(360)); 

rect(cornerX+149,cornerY+178, 33, 4)
rect(cornerX+179,cornerY + 154, 4, 29)
arc(cornerX+179,cornerY + 180, 20, 50, radians(180), radians(270)); 
arc(cornerX+175,cornerY + 178, 50, 20, radians(180), radians(270)); 

rect(cornerX+149,cornerY+0, 33, 4)
rect(cornerX+179,cornerY , 4, 30)
arc(cornerX+175,cornerY + 5, 50, 20, radians(90), radians(180)); 
arc(cornerX+180,cornerY + 5, 20, 50, radians(90), radians(180)); 



fill(249,249,247)
stroke(19,50,81)
strokeWeight(2)

arc(cornerX+18,cornerY+3, 16, 13, radians(0), radians(180))
arc(cornerX+3,cornerY+18, 13, 13, radians(270), radians(450))

arc(cornerX+165,cornerY+3, 16, 13, radians(0), radians(180))
arc(cornerX+181,cornerY+18, 13, 13, radians(90), radians(270))

arc(cornerX+18,cornerY+181, 16, 13, radians(180), radians(360))
arc(cornerX+3,cornerY+167, 13, 14, radians(270), radians(450))

arc(cornerX+165,cornerY+181, 16, 13, radians(180), radians(360))
arc(cornerX+180,cornerY+166, 13, 14, radians(90), radians(270))

line(cornerX + 157,cornerY + 181, cornerX + 170, cornerY + 181)
line(cornerX + 10,cornerY + 181, cornerX + 23, cornerY + 181)
line(cornerX + 157,cornerY + 3, cornerX + 170, cornerY + 3)
line(cornerX + 12,cornerY + 3, cornerX + 25, cornerY + 3)
line(cornerX + 181,cornerY + 13, cornerX + 181, cornerY + 21)
line(cornerX + 181,cornerY + 159, cornerX + 181, cornerY + 172)
line(cornerX + 2,cornerY + 161, cornerX + 2, cornerY + 172)
line(cornerX + 2,cornerY + 12, cornerX + 2, cornerY + 22)

stroke(243,159,118)

line(cornerX, cornerY, cornerX + 33, cornerY)
line(cornerX+149, cornerY, cornerX + 182, cornerY)

stroke(183,68,38)
line(cornerX, cornerY+183, cornerX + 33, cornerY+183)
line(cornerX+149, cornerY+183, cornerX + 182, cornerY+183)

}


