package flash.display {
    import flash.display.Sprite;

    public class Application extends Sprite {
        public function Application(width:uint = 550, height:uint = 400) {
            var stage:Stage = Stage.createStage(width, height);
            stage.addChild(this);
        }
    }
}
