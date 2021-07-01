# fah
Flash API form HTML

We want to build a library that can compile as3 games directly with apache royale sdk.

# HelloWorld  

## Main.as 
```ActionScript
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
```

## Template html file 
```html
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <script type="text/javascript" src="./Main.js"></script>
</head>

<body>
    <script type="text/javascript">
        document.body.appendChild(new Main().stage.htmlElement);
    </script>
</body>

</html>
```
