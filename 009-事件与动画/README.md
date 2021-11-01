## JQuery 事件 & JQuery 动画

### JQuery 动画

- JQuery 允许我们在一条语句中运行多个 jQuery 方法（在相同的元素上）

```js
$("#p1").css("color", "red").slideUp(2000).slideDown(2000);
```

#### hide() / show()

使用 hide() 和 show() 方法来隐藏和显示 HTML 元素

<div style="color: green;">本质是修改display的值</div>

```js
// hide(speed ,animate_function ,callback)
// speed: ['slow,'fast',xxx(ms)]
// animate_function: ['linear','swing']
$('p').hide(1000,'linear',callback_fn(){
    console.log('already hide');
});
```

#### toggle()

单个事件控制显示隐藏

<div style="color: green;">本质是修改display的值</div>

```js
// toggle(speed ,animate_function ,callback)
// speed: ['slow,'fast',xxx(ms)]
// animate_function: ['linear','swing']
$('p').toggle(1000,'linear',callback_fn(){
    switch($('p').css('display)){
        case 'none':
            console.log("already hide");
            break;
        default:
            console.log("already show");
            break;
    }
});
```

1.$(selector)选中的元素的个数为 n 个，则 callback 函数会执行 n 次；

2.callback 函数名后加括号，会立刻执行函数体，而不是等到显示/隐藏完成后才执行；

#### fadeIn() / fadeOut()

// fadeIn(speed ,animate_function ,callback)
// speed: ['slow,'fast',xxx(ms)]
// animate_function: ['linear','swing']
fadeIn() 用于淡入已隐藏的元素,fadeOut() 方法用于淡出可见元素。

<div style="color: green;">本质是修改display的值</div>

```js
$("p").fadeIn(1000, "linear", function () {
  console.log("already fadeIn");
});
```

#### fadeToggle

可以在 fadeIn() 与 fadeOut() 方法之间进行切换

#### fadeTo()

渐变为给定的不透明度（值介于 0 与 1 之间）

```js
// fadeTo(speed,opacity,callback);

$("p").fadeTo(1000, 0.6);
```

#### slideUp() / slideDown()

slideDown() 方法用于向下滑动元素,slideUp() 方法用于向上滑动元素。

<div style="color: green;">过程中通过不断改变height, margin-top, margin-bottom的值，最后改变display的值</div>

```js
$("p").slideUp("slow", "linear", function () {
  console.log("already slideUp");
});
```

#### slideToggle()

可以在 slideDown() 与 slideUp() 方法之间进行切换。

#### animate()

- jQuery 提供针对动画的队列功能。如果您在彼此之后编写多个 animate() 调用，jQuery 会创建包含这些方法调用的"内部"队列。然后逐一运行这些 animate 调用。

- 默认情况下，所有 HTML 元素都有一个静态位置，且无法移动。如需对位置进行操作，要记得首先把元素的 CSS position 属性设置为 relative、fixed 或 absolute！

- 当使用 animate() 时，必须使用 Camel 标记法书写所有的属性名，比如，必须使用 paddingLeft 而不是 padding-left，使用 marginRight 而不是 margin-right，等等。

- 如果需要生成颜色动画，您需要从 [jquery.com](https://jquery.com/download/) 下载 [颜色动画](https://plugins.jquery.com/color/) 插件。

```js
// animate({params},speed,callback);
// 动画中使用相对值，可以叠加使用
$("div").animate({ left: "250px", height: "+=150px", width: "+=150px" });

// 动画中使用预定义值['hide', 'show', 'toggle']，方便显示 / 隐藏
$("div").animate({ height: "toggle" });

// 队列动画
$("div").animate(
  { left: "250px", opacity: "0.5", height: "150px", width: "150px" },
  "fast"
);
$("div").animate({ marginLeft: "50px" }, "slow");
```

#### stop()

stop() 方法用于停止动画或效果，在它们完成之前。

- stop() 方法适用于所有 jQuery 效果函数，包括滑动、淡入淡出和自定义动画。

- 可选的 stopAll 参数规定是否应该清除动画队列。默认是 false，即仅停止活动的动画，允许任何排入队列的动画向后执行。

- 可选的 goToEnd 参数规定是否立即完成当前动画。默认是 false。

```js
// stop(stopAll,goToEnd);
// 停止当前动画，进行下一帧
$("#panel").stop();
// 跳过动画直接完成
$("#panel").stop(false, true);
// 停止所有动画
$("#panel").stop(true);
```

### JQuery 事件

| document | mouse                  | key      | form   |
| -------- | ---------------------- | -------- | ------ |
| ready    | click                  | keydown  | focus  |
| resize   | dbclick                | keyup    | blur   |
| scroll   | hover                  | keypress | change |
|          | mouseenter / mouseover |          | submit |
|          | mouseleave / mouseout  |          |        |

#### 文档事件

##### ready()

- jQuery 的入口函数是在 html 所有标签(DOM)都加载之后，就会去执行；JavaScript 的 window.onload 事件是等到所有内容，包括外部图片之类的文件加载完后，才会执行。

```js
$(document).ready(function(){// 开始写 jQuery 代码...});
// 简写
$(function(){// 开始写 jQuery 代码...});
```

##### resize()

当调整浏览器窗口大小时，发生 resize 事件。

##### scroll()

当用户滚动指定的元素时，会发生 scroll 事件。

#### 鼠标事件

##### click

当单击元素时，发生 click 事件。

##### dbclick

当双击元素时，触发 dblclick 事件。

<div style="color: green;">dblclick 事件也会产生 click 事件。如果这两个事件都被应用于同一个元素，则会产生问题。</div>

##### hover

hover() 方法规定当鼠标指针悬停在被选元素上时要运行的两个函数。方法触发 mouseenter 和 mouseleave 事件。

<div style="color: green;">如果只指定一个函数，则 mouseenter 和 mouseleave 都执行它。</div>

```js
// hover(inFunction,outFunction)
$("p").hover(
  function () {
    $("p").css("background-color", "yellow");
  },
  function () {
    $("p").css("background-color", "pink");
  }
);
```

##### mouseenter
当鼠标指针穿过（进入）被选元素时，会发生 mouseenter 事件。

##### mouseleave
当鼠标指针离开被选元素时，会发生 mouseleave 事件。

##### mouseover
当鼠标指针位于元素上方时，会发生 mouseover 事件。

<div style="color: green;">与 mouseenter 事件不同，mouseover 事件在鼠标指针进入被选元素或任意子元素时都会被触发，mouseenter 事件只有在鼠标指针进入被选元素时被触发。</div>

##### mouseout
当鼠标指针离开被选元素时，会发生 mouseout 事件。\

<div style="color: green;">与 mouseleave 事件不同，mouseout 事件在鼠标指针离开被选元素或任意子元素时都会被触发，mouseleave 事件只有在鼠标指针离开被选元素时被触发。</div>

#### 键盘事件

##### keydown
键按下的过程

```js
$(document).ready(function(){
  $("div").mousedown(function(event){ 
    //   event.which 返回鼠标哪个键被按下，1-左 2-滚轮 3-右
    $("div").append("<br>Mouse button pressed: " + event.which);
  });
});
```

##### keyup
键被松开

##### keypress
键被按下
<div style="color: green;">keypress 事件不会触发所有的键（比如 ALT、CTRL、SHIFT、ESC）。请使用 keydown() 方法来检查这些键。</div>

#### 表单事件

##### focus
当元素获得焦点时（当通过鼠标点击选中元素或通过 tab 键定位到元素时），发生 focus 事件。

##### blur
当元素失去焦点时发生 blur 事件。

##### change
当元素的值改变时发生 change 事件（仅适用于表单字段）。
<div style="color: green;">当用于 select 元素时，change 事件会在选择某个选项时发生。当用于 text field 或 text area 时，change 事件会在元素失去焦点时发生。</div>

##### submit
当提交表单时，会发生 submit 事件。
