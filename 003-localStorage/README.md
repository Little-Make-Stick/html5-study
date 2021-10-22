### HTML Storage-LocalStorage

- 保存数据语法：
  ```js
  localStorage.setItem("key", "value");
  ```
- 读取数据语法：
  ```js
  var lastname = localStorage.getItem("key");
  ```
- 删除数据语法：

  ```js
  localStorage.removeItem("key");
  ```

- 清空 localStorage
  ```js
  localStorage.clear();
  ```
- 获取键
  ```js
  localStorage.key(i);
  ```
- 监听 storage

  ```js
  if (window.addEventListener) {
    window.addEventListener("storage", onStorageChange);
  } else if (window.attachEvent) {
    window.attachEvent("onstorage", onStorageChange);
  }
  function onStorageChange(e) {}
  ```

  storage 事件里的 e 是一个 StorageEvent 对象。 有如下属性

  | Attribute | Type   | Function                                    |
  | --------- | ------ | ------------------------------------------- |
  | key       | String | added, removed, or moddified                |
  | oldValue  | Any    | old value,or null if a new item was added   |
  | newValue  | Any    | new value,or null if a new item was removed |
  | url/uri   | String | page causing change                         |

  - ipad 上的造成 storage 变化的页面的参数名是 uri
  - !!! 特别注意的是，该事件不在导致数据变化的当前页面触发。
    - 如果浏览器同时打开一个域名下面的多个页面，当其中的一个页面改变 sessionStorage 或 localStorage 的数据时，其他所有页面的 storage 事件会被触发，而原始页面并不触发 storage 事件。可以通过这种机制，实现多个窗口之间的通信。

#### localStorage 的局限

1.  浏览器在 IE8 以上的 IE 版本才支持 localStorage 这个属性。
2.  目前所有的浏览器中都会把 localStorage 的值类型限定为 string 类型。
3.  localStorage 本质上是对字符串的读取，如果存储内容多的话会消耗内存空间，会导致页面变卡。
4.  localStorage 不能被爬虫抓取到。
5.  在 iPhone/iPad 上有时设置 setItem()时会出现诡异的 QUOTA_EXCEEDED_ERR 错误，这时一般在 setItem 之前，先 removeItem()就 ok 了。

#### 查询是否支持 localStorage

```js
if (!window.localStorage) {
  alert("浏览器不支持localstorage");
  return false;
} else {
  //主逻辑业务
}
```

#### localStorage 只能存储字符串

##### JSON

```js
let data = {
  name: "white",
  age: 18,
};
window.localStorage.setItem("user", JSON.stringify(data));
JSON.parse(window.localStorage.getItem("user"));
```

##### Array

```js
let arr = ["h", "e", "l", "l", "o"];
window.localStorage.setItem("array", arr.join(","));
window.localStorage.getItem("array").split(",");
```
