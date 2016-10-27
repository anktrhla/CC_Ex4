
//create an array with 800 "stars" in it

Star[] stars = new Star[800];

float speed; //create variable speed to control the speed of the stars



void setup() {

  size(2000, 1700);


// create a for loop that runs for the length of the "star" array and creates a new star
  for (int i = 0; i < stars.length; i++) {

    stars[i] = new Star();

  }

}



void draw() {

  speed = map(mouseX, 0, width, 0, 50); //map the value of speed with mouse position

  background(0);

  translate(width/2, height/2); //translate the coordinate system to center of the screen

  // for each star update and show the position of the star on the canvas, this is 
  // update and show position are called in from the Star class
  for (int i = 0; i < stars.length; i++) {

    stars[i].update();

    stars[i].show();

  }

}