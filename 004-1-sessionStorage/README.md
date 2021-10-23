### HTML Storage-SessionStorage

- 保存数据语法：
  ```js
  sessionStorage.setItem("key", "value");
  ```
- 读取数据语法：
  ```js
  sessionStorage.getItem("key");
  ```
- 删除数据语法：

  ```js
  sessionStorage.removeItem("key");
  ```

- 清空 localStorage
  ```js
  sessionStorage.clear();
  ```
- 获取键
  ```js
  sessionStorage.key(i);
  ```

* Chrome 浏览器，\_blank 方式新开窗口，sessionStorage 存储的数据会丢失。

  解决方案：

  ```html
  <a href="***" target="_blank" rel="opener noreferrer nofollow ugc">走</a>
  ```

#### 应用场景

1. 需求方要求用户在一个列表页浏览时，点击一个列表进入详情页，返回要求记录用户刚刚浏览的位置，而不是重新刷新页面到了页面顶部。（ps：如果用户好不容易翻到了第几十、几百乃至几千条时，难道要用户再重头开始？可能这个时候跳出率就高了）。
   1. 页面滚动，将滚动位置存到 session 中
   2. 再次进到页面中，到 session 中取出上次保存的浏览位置
   3. 滚动到对应位置

```js
$(window).scroll(function () {
  if ($(document).scrollTop() != 0) {
    sessionStorage.setItem("offsetTop", $(window).scrollTop()); /*保存滚动位置*/
  }
});
/*onload时，取出并滚动到上次保存位置*/
window.onload = function () {
  var _offset = sessionStorage.getItem("offsetTop");
  $(document).scrollTop(offsetTop);
};
```

2. 分页跳转时多选框中选中的值在跳转到第二页时数据无法保存
   1. 选中时往 sessionStorage 添加一条数据
   2. 取消选中时 sessionStorage 移除一条数据
   3. 提交时从 sessionStorage 遍历取出数据

```js
 $('#tbody').on('click', '.ops', function() {//单个
    if($(this).is(':checked')) {
        var obj = {};
        obj.id = $(this).val();
        obj.name = $(this).data('name');
        sessionStorage.setItem($(this).val(),JSON.stringify(obj));//将对象转为json字符串存储
    } else {
        sessionStorage.removeItem($(this).val());//当多选点击取消是移除session
    }
})
var len =sessionStorage.length;//获取session中值的长度,以便遍历
for(var i = 0; i< len; i++) {
    var key = sessionStorage.key(i);
    var sessionObj = JSON.parse(sessionStorage.getItem(key));
    ...

}

sessionStorage.clear();//数据处理完记得清空
```
