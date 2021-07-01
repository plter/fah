package flash.display {
    import org.apache.royale.display.UIGraphicsBase;

    public class Shape extends DisplayObject {
        public function Shape() {
            _graphics = Graphics.createGraphics();
            var graphicsLayer:UIGraphicsBase = _graphics.renderTarget as UIGraphicsBase;
            graphicsLayer.element.style.position = "absolute";
            htmlElement = graphicsLayer.element;
        }

        private var _graphics:Graphics;

        public function get graphics():Graphics {
            return _graphics;
        }
    }
}
