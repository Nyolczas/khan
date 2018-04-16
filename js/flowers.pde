
        
        /*************
         *OBJECT TYPES
         **************/
        /******************
         *Flower Object Type
         *******************/
        var Flower = function (x, y, height) {
            this.x = x;
            this.y = y;
            this.height = height;
        };

        Flower.prototype.growBy = function (amount) {
            this.height += amount * 2;
        };

        /*****************
         *Tulip Object Type
         ******************/
        var Tulip = function (x, y, height) {
            Flower.call(this, x, y, height);
        };

        Tulip.prototype = Object.create(Flower.prototype);

        Tulip.prototype.draw = function () {
            noStroke();
            fill(16, 122, 12);
            rect(this.x, this.y, 10, -this.height);
            fill(255, 0, 0);
            // petals
            ellipse(this.x + 5, this.y - this.height, 44, 44);
            triangle(this.x - 16, this.y - this.height,
                this.x + 20, this.y - this.height,
                this.x - 20, this.y - this.height - 31);
            triangle(this.x - 14, this.y - this.height,
                this.x + 24, this.y - this.height,
                this.x + 3, this.y - this.height - 39);
            triangle(this.x + -4, this.y - this.height,
                this.x + 26, this.y - this.height,
                this.x + 29, this.y - this.height - 36);
        };

        /*********************
         *Sunflower Object Type
         **********************/
        var Sunflower = function (x, y, height) {
            Flower.call(this, x, y, height);
        };

        Sunflower.prototype = Object.create(Flower.prototype);

        Sunflower.prototype.draw = function () {
            fill(16, 122, 12);
            noStroke();
            rect(this.x, this.y, 10, -this.height);

            // petals
            stroke(0, 0, 0);
            fill(255, 221, 0);
            ellipse(this.x - 10, this.y - this.height, 20, 18);
            ellipse(this.x + 5, this.y - this.height - 15, 20, 18);
            ellipse(this.x + 5, this.y - this.height + 15, 20, 18);
            ellipse(this.x + 20, this.y - this.height, 20, 18);
            fill(20, 20, 20);
            ellipse(this.x + 5, this.y - this.height, 20, 20);
        };

        /*********************
         *MyFlower Object Type
         **********************/
        var MyFlower = function (x, y, height) {
            Flower.call(this, x, y, height);
        };

        MyFlower.prototype = Object.create(Flower.prototype);

        MyFlower.prototype.draw = function () {
            fill(16, 122, 12);
            noStroke();
            rect(this.x, this.y, 10, -this.height);

            // petals
            stroke(255, 0, 255);
            fill(239, 98, 252);
            ellipse(this.x + 5, this.y - this.height - 5, 53, 53);
            fill(247, 158, 255);
            ellipse(this.x + 5, this.y - this.height, 33, 43);
            fill(249, 181, 255);
            ellipse(this.x + 5, this.y - this.height + 5, 23, 33);
            fill(253, 227, 255);
            ellipse(this.x + 5, this.y - this.height + 10, 13, 23);
        };
        /**************
         *MAIN PROGRAM
         ***************/

        /** create object instances **/
        var tulip = new Tulip(38, 390, 150);
        var tulipB = new Tulip(344, 392, 63);
        var sunflower = new Sunflower(186, 390, 100);
        var sunflower2 = new Sunflower(237, 392, 70);
        var myflower1 = new MyFlower(100, 390, 80);
        var myflower2 = new MyFlower(276, 392, 27);


        var drawScene = function () {
            background(207, 250, 255);
            tulip.draw();
            tulipB.draw();
            sunflower.draw();
            sunflower2.draw();
            myflower1.draw();
            myflower2.draw();
        };

        mouseClicked = function () {
            tulip.growBy(5);
            tulipB.growBy(10);
            sunflower.growBy(8);
            sunflower2.growBy(12);
            myflower1.growBy(13);
            myflower2.growBy(15);
            drawScene();
        };

        drawScene();

void setup()
        {
            size(400, 400);
            drawScene();
        }