### HTML Object

官方文档：
https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Object

#### 声明对象

* let obj = {k:v,k1:v1}

* let obj = new Object({k:v,k1:v1})

* let obj = Object.create(ClassName,{k:v,k1:v1})

#### 对象的属性类型

* 基本类型

  (Number,String,Boolean,Undefined,Null)

* 引用类型

  (Object,Array,Function)

#### 对象的使用

* 访问某个值
  ```js
  let v = obj.k;
  ```

* 加一个新的属性 / 改变属性的值
  ```js
  obj.k2 = v2;
  ```
  
* obj扁平化（转字符串）
  ```js
  JSON.stringify(obj)
  ```

