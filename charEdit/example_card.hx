import flixel.FlxCamera;
import flixel.math.FlxMath;
import flixel.FlxSprite;
import flixel.math.FlxAngle;
import flixel.math.FlxPoint;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxSpriteUtil;
import flixel.util.FlxTimer;
import funkin.graphics.shaders.AdjustColorShader;
import flixel.addons.display.FlxTiledSprite;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;

var gooberAlert1:FlxBackdrop;
var gooberAlert2:FlxBackdrop;
var backLines:FlxSprite;
var confirmAtlas:FlxAtlasSprite;
var pinkBack:FlxSprite;

function init():Void
{
	pinkBack = new FlxSprite().loadGraphic(Paths.image('freeplay/pinkBack'));
	pinkBack.color = 0x240042; // sets it to purple
	add(pinkBack);
	pinkBack.cameras = [FlxG.state.subState.funnyCam];

	backLines = new FlxSprite(-27, 193).loadGraphic(Paths.image('freeplay/backingCards/gooey/freeplayLines'));

	gooLines = new FlxBackdrop(Paths.image('freeplay/backingCards/gooey/gooline'), 0x01, 0);
	gooLines.setPosition(0, 120);
	gooLines.velocity.x = 100;
	add(gooLines);
	gooLines.cameras = [FlxG.state.subState.funnyCam];

	gooberAlert1 = new FlxBackdrop(Paths.image('freeplay/backingCards/gooey/gooAlert1'), 0x01, 20);
	gooberAlert1.setPosition(0, 160);
	gooberAlert1.velocity.x = 200;
	add(gooberAlert1);
	gooberAlert1.cameras = [FlxG.state.subState.funnyCam];

	gooLinestwo = new FlxBackdrop(Paths.image('freeplay/backingCards/gooey/gooline2'), 0x01, 0);
	gooLinestwo.setPosition(0, 400);
	gooLinestwo.velocity.x = 100;
	add(gooLinestwo);
	gooLinestwo.cameras = [FlxG.state.subState.funnyCam];

	gooberAlert3 = new FlxBackdrop(Paths.image('freeplay/backingCards/gooey/gooAlert3'), 0x01, 20);
	gooberAlert3.setPosition(0, 335);
	gooberAlert3.velocity.x = -250;
	add(gooberAlert3);
	gooberAlert3.cameras = [FlxG.state.subState.funnyCam];

	gooberAlert2 = new FlxBackdrop(Paths.image('freeplay/backingCards/gooey/gooAlert2'), 0x01, 15);
	gooberAlert2.setPosition(0, 440);
	add(gooberAlert2);
	gooberAlert2.velocity.x = 200;
	gooberAlert2.cameras = [FlxG.state.subState.funnyCam];

	gooLines3 = new FlxBackdrop(Paths.image('freeplay/backingCards/gooey/gooline'), 0x01, 0);
	gooLines3.setPosition(0, 650);
	gooLines3.velocity.x = 100;
	add(gooLines3);
	gooLines3.cameras = [FlxG.state.subState.funnyCam];

	glow = new FlxSprite(0, 0).loadGraphic(Paths.image('freeplay/backingCards/gooey/gooGrad'));
	glow.blend = 6;
	add(glow);
	glow.cameras = [FlxG.state.subState.funnyCam];
}

function disappear():Void
{
	pinkBack.visible = false;
	backLines.visible = false;
	gooberAlert1.visible = false;
	gooberAlert2.visible = false;
	gooberAlert3.visible = false;
	gooLines.visible = false;
	gooLinestwo.visible = false;
	gooLines3.visible = false;
	glow.visible = false;
}
