package {
    import flash.display.Application;

    public class Main extends Application {
        public function Main() {
            super();

            graphics.beginFill(0xffff0000);
            graphics.drawRect(0, 0, 100, 100);
            graphics.endFill();
        }
    }
}
