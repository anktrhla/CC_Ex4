

// I create a "Star" Class.

class Star {

  // create variables to specify the position of stars in x and y
  float x;
  float y;

  // create z variable to create a false depth of field; 3D...
  float z;
  
  // create a variable that stores previous value of z
  float pz;



  Star() {

    // randomize the generation of each star
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width/2);


  // after each frame passes, put the value of z in pz so that pz can always have the previous value
  // of z, when it gets the next value.
    pz = z;

  }


  void update() {

    z = z - speed;

    if (z < 1) {

      // update the values of the coordinates that denote the position of any given star
      z = width/2;

      x = random(-width/2, width/2);

      y = random(-height/2, height/2);

      pz = z;

    }

  }

  void show() {

    fill(255);

    noStroke();

    // create variables that hold the next/future value of the x, y and z coordinates of the stars.
    float nx = map(x / z, 0, 1, 0, width/2);
    float ny = map(y / z, 0, 1, 0, height/2);;

    // increase the star size in a range 0-16
    float r = map(z, 0, width/2, 16, 0);

    // get the previous value of z, and draw a line between the previous value of z and the current
    // value of z to create a speed warp effect
    float px = map(x / pz, 0, 1, 0, width/2);
    float py = map(y / pz, 0, 1, 0, height/2);

    pz = z;
    stroke(255);
    line(px, py, nx, ny);

  }

}