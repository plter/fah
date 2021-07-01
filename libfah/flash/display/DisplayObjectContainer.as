package flash.display {



    public class DisplayObjectContainer extends InteractiveObject {


        public function DisplayObjectContainer() {
        }

        public function addChild(child:DisplayObject):DisplayObject {
            child.setParent(this);
            htmlElement.appendChild(child.htmlElement);
            return this;
        }

        public function addChildAt(child:DisplayObject, index:int):DisplayObject {
            var children:NodeList = htmlElement.childNodes;
            if (children.length > index) {
                child.setParent(this);
                htmlElement.insertBefore(child.htmlElement, children[index]);
            }
            return this;
        }

        public function contains(child:DisplayObject):Boolean {
            return htmlElement.contains(child.htmlElement);
        }

        public function getChildAt(index:int):DisplayObject {
            return DisplayObject.getRelatedDisplayObjectOfHtmlElement(htmlElement.childNodes[index]);
        }

        public function get numChildren():int {
            return htmlElement.childNodes.length;
        }

        public function getChildByName(name:String):DisplayObject {
            var c:NodeList = htmlElement.childNodes;
            var length:int = c.length;
            for (var i:int = 0; i < length; i++) {
                var d:DisplayObject = DisplayObject.getRelatedDisplayObjectOfHtmlElement(c[i]);
                if (d.name == name) {
                    return d;
                }
            }
            return null;
        }

        public function getChildIndex(child:DisplayObject):int {
            var c:NodeList = htmlElement.childNodes;
            var length:int = c.length;
            for (var i:int = 0; i < length; i++) {
                var d:DisplayObject = DisplayObject.getRelatedDisplayObjectOfHtmlElement(c[i]);
                if (child == d) {
                    return i;
                }
            }
            return -1;
        }

        public function removeChild(child:DisplayObject):DisplayObject {
            htmlElement.removeChild(child.htmlElement);
            child.setParent(null);
            return child;
        }

        public function removeChildAt(index:int):DisplayObject {
            var d:DisplayObject = getChildAt(index);
            if (d) {
                removeChild(d);
            }
            return d;
        }
    }
}
