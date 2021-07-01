package flash.display {

    import org.apache.royale.display.UIGraphicsBase;

    public class Sprite extends DisplayObjectContainer {
        public function Sprite() {
            htmlElement = document.createElement("div") as HTMLElement;
            htmlElement.style.position = "absolute";

            _graphics = Graphics.createGraphics();
            var graphicsLayer:UIGraphicsBase = _graphics.renderTarget as UIGraphicsBase;
            console.debug(graphicsLayer);
            graphicsLayer.element.style.position = "absolute";
            htmlElement.appendChild(graphicsLayer.element);
        }

        private var _graphics:Graphics;

        public function get graphics():Graphics {
            return _graphics;
        }
    }
}
