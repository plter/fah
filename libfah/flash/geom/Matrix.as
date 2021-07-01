package flash.geom {
    import org.apache.royale.geom.Matrix;

    public class Matrix {
        public function Matrix(a:Number = 1, b:Number = 0, c:Number = 0, d:Number = 1, tx:Number = 0, ty:Number = 0) {
            _relatedM = new org.apache.royale.geom.Matrix(a, b, c, d, tx, ty);
        }

        private var _relatedM:org.apache.royale.geom.Matrix;

        public function get a():Number {
            return _relatedM.a;
        }

        public function get b():Number {
            return _relatedM.b;
        }

        public function get c():Number {
            return _relatedM.c;
        }

        public function get d():Number {
            return _relatedM.d;
        }

        public function get tx():Number {
            return _relatedM.tx;
        }

        public function get ty():Number {
            return _relatedM.ty;
        }

        public function rotate(angle:Number):flash.geom.Matrix {
            _relatedM.rotate(angle);
            return this;
        }

        public function invert():flash.geom.Matrix {
            _relatedM.invert();
            return this;
        }

        public function deltaTransformPoint(point:org.apache.royale.geom.Point):org.apache.royale.geom.Point {
            _relatedM.deltaTransformPoint(point);
            return point;
        }

        public function scale(x:Number, y:Number):flash.geom.Matrix {
            _relatedM.scale(x, y);
            return this;
        }

        public function concat(m:flash.geom.Matrix):flash.geom.Matrix {
            _relatedM.concat(m._relatedM);
            return this;
        }

        public function translate(x:Number, y:Number):flash.geom.Matrix {
            _relatedM.translate(x, y);
            return this;
        }

        public function copyFrom(source:flash.geom.Matrix):flash.geom.Matrix {
            _relatedM.copyFrom(source._relatedM);
            return this;
        }

        public function identity():flash.geom.Matrix {
            _relatedM.identity();
            return this;
        }

        public function transformPoint(point:org.apache.royale.geom.Point):org.apache.royale.geom.Point {
            _relatedM.transformPoint(point);
            return point;
        }

        public function clone():flash.geom.Matrix {
            return new flash.geom.Matrix(a, b, c, d, tx, ty);
        }

        public function createGradientBox(width:Number, height:Number, rotation:Number = 0, tx:Number = 0, ty:Number = 0):void {
            _relatedM.createGradientBox(width, height, rotation, tx, ty);
        }

        public function toString():String {
            return _relatedM.toSource();
        }

        public function determinant():Number {
            return _relatedM.determinant();
        }
    }
}
