var Creature = function(nickname, age, x, y) {
    this.nickname = nickname;
    this.age = age + "yrs old";
    this.x = x;
    this.y = y;
};

Creature.prototype.talk = function() {
    text("SUPPP!?!?!?!??!", this.x+20, this.y+140);  
};

// ================== Hopper ==================

var Hopper = function(nickname, age, x, y) {
    Creature.call(this, nickname, age, x, y);
};

Hopper.prototype = Object.create(Creature.prototype);

Hopper.prototype.draw = function() {
    fill(217, 90, 0);
    var img = getImage("creatures/Hopper-Happy");
    image(img, this.x, this.y);
    var txt = this.nickname + ", " + this.age;
    text(txt, this.x+10, this.y-7);  
};

Hopper.prototype.hooray = function() {
   text("Hooooray!!!", this.x+29, this.y+140);  
};

// ================== Winston ==================

var Winston = function(nickname, age, x, y) {
    Creature.call(this, nickname, age, x, y);
};

Winston.prototype = Object.create(Creature.prototype);

Winston.prototype.draw = function() {
    fill(255, 0, 0);
    var img = getImage("creatures/Winston");
    image(img, this.x, this.y);
    var txt = this.nickname + ", " + this.age;
    text(txt, this.x+20, this.y-10);  
};

// ================== Main ==================

var winstonTeen = new Winston("Winsteen", 15, 20, 50);
var winstonAdult = new Winston("Mr. Winst-a-lot", 30, 229, 50);

winstonTeen.draw();
winstonTeen.talk();
winstonAdult.draw();

var lilHopper = new Hopper("Little Hopper", 15, 20, 240);
lilHopper.draw();
lilHopper.talk();
var bigHopper = new Hopper("Big Hopper", 30, 220, 240);
bigHopper.draw();
bigHopper.hooray();