package;

import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.events.*;
import openfl.Assets;

class Main extends Sprite {

	private static var DEFAULT_W:Int = 800;
	private static var DEFAULT_H:Int = 600;
	private var Body:Bitmap;
	public function new () {
		super ();
		this.stage.addEventListener(Event.RESIZE, this.onResize);
		Body = new Bitmap(Assets.getBitmapData("assets/images/Bweh the forbidden one.png"));
		addChild(Body);
		this.stage.resize(DEFAULT_W, DEFAULT_H);
	}

	public function onResize(event:Dynamic) {
		var w = this.stage.width;
		var h = this.stage.height;
		trace("resize: " + w + "x" + h);
		var scale:Float = w / DEFAULT_W;
		Body.scaleX = scale;
		Body.scaleY = scale;
	}

}
