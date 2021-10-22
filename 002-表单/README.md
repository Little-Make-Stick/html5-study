### Form Element

#### form

form: 用于为用户输入创建 HTML 表单。用于向服务器传输数据。

##### Attributes

| attr           | value                                                                        | function                         |
| -------------- | ---------------------------------------------------------------------------- | -------------------------------- |
| accept-charset | charset_list                                                                 | 表单数据字符集                   |
| action         | url                                                                          | 当提交表单时向何处发送表单数据   |
| autocomplete   | [on ,off]                                                                    | 是否启用表单的自动完成功能       |
| enctype        | [application/x-www-form-urlencoded,multipart/form-data,text/plain]           | 发送表单数据之前如何对其进行编码 |
| method         | [post ,get]                                                                  | 用于发送 form-data 的 HTTP 方法  |
| name           | form_name                                                                    | 表单的名称                       |
| novalidate     | novalidate                                                                   | 提交表单时不进行验证             |
| target         | [_blank,_self,_parent,_top,framename]                                        | 在何处打开 action URL            |
| rel            | [external,help,license,next,nofollow,noopener,noreferrer,opener,prev,search] | 规定链接资源和当前文档之间的关系 |

```html
<form action="demo-form.php">
  First name: <input type="text" name="FirstName" value="Mickey" /><br />
  Last name: <input type="text" name="LastName" value="Mouse" /><br />
  <input type="submit" value="提交" />
</form>
```

#### fieldset

fieldset: 将表单内的相关元素分组

- <fieldset> 标签会在相关表单元素周围绘制边框。
- 提示：<legend> 标签为 <fieldset> 元素定义标题。
- form 属性规定 fieldset 所属的一个或多个表单，属性的值必须是所属表单的 id。

##### Attributes

| attr     | value    | function                      |
| -------- | -------- | ----------------------------- |
| disabled | disabled | 禁用 fieldset                 |
| form     | form_id  | fieldset 所属的一个或多个表单 |
| name     | String   | fieldset 的名称               |

```html
<form action="/example/html5/demo_form.asp" method="get" id="iceform">
  你喜欢什么口味的冰激凌？<input type="text" name="icecream" /><br />
  <input type="submit" />
</form>
<fieldset form="iceform">
  <legend>Personalia:</legend>
  Name: <input type="text" name="usrname" /><br />
</fieldset>
```

#### label

label: 规定 label 与哪个表单元素绑定。

```html
<!-- 显式的联系 -->
<label for="SSN">Social Security Number:</label>
<input type="text" name="SocSecNum" id="SSN" />

<!-- 隐式的联系 -->
<label>Date of Birth: <input type="text" name="DofB" /></label>
```

#### input

input: 用于搜集用户信息。

- 根据不同的 type 属性值，输入字段拥有很多种形式。输入字段可以是文本字段、复选框、掩码后的文本控件、单选按钮、按钮等等。

##### Attributes

| attr           | value                                                              | function                                                  | type                                                                                               |
| -------------- | ------------------------------------------------------------------ | --------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| accept         | MIME_type                                                          | 通过文件上传来提交的文件的类型                            | file                                                                                               |
| alt            | text                                                               | 图像输入的替代文本                                        | image                                                                                              |
| autoComplete   | [on ,off]                                                          | 是否使用输入字段的自动完成功能                            | [text, search, url, telephone, email, password, datepickers, range, color]                         |
| autofocus      | autofocus                                                          | 在页面加载时是否获得焦点。                                | 除 hidden                                                                                          |
| checked        | checked                                                            | 首次加载时应当被选中                                      | [checkbox,radio]                                                                                   |
| disabled       | disabled                                                           | 加载时禁用此元素                                          | 除 hidden                                                                                          |
| form           | form_id                                                            | 输入字段所属的一个或多个表单                              | \*                                                                                                 |
| formaction     | url                                                                | 覆盖表单的 action 属性                                    | [image,submit]                                                                                     |
| formanctype    | [application/x-www-form-urlencoded,multipart/form-data,text/plain] | 规定当表单数据提交到服务器时如何编码                      | [image,submit]                                                                                     |
| formmethod     | [post ,get]                                                        | 发送表单数据到 action URL 的 HTTP 方法                    | [image,submit]                                                                                     |
| formnovalidate | formnovalidate                                                     | formnovalidate 属性覆盖 <form> 元素的 novalidate 属性。   | submit                                                                                             |
| formtarget     | [_blank,_self,_parent,_top,framename]                              | 表单后在哪里显示接收到响应的名称或关键词                  | [image,submit]                                                                                     |
| list           | datalist_id                                                        | 引用 <datalist> 元素，其中包含 <input> 元素的预定义选项。 | \*                                                                                                 |
| max            | [number,date]                                                      | 输入字段的最大值                                          | [number, range, date, datetime, datetime-local, month, time, week]                                 |
| maxlength      | number                                                             | 规定 <input> 元素中允许的最大字符数                       | \*                                                                                                 |
| min            | [number,date]                                                      | 输入字段的最小值                                          | [number, range, date, datetime, datetime-local, month, time, week]                                 |
| multiple       | multiple                                                           | 允许用户输入到 <input> 元素的多个值                       | [email,file]                                                                                       |
| name           | text                                                               | <input> 元素的名称                                        | \*                                                                                                 |
| pattern        | regexp                                                             | 验证 <input> 元素的值的正则表达式                         | [text,search,url,tel,email,password]                                                               |
| placeholder    | text                                                               | 可描述输入 <input> 字段预期值的简短的提示信息             | [text,search,url,tel,email,password]                                                               |
| readonly       | readonly                                                           | 输入字段是只读的                                          | \*                                                                                                 |
| required       | required                                                           | 必需在提交表单之前填写输入字段                            | [text, search, url, telephone, email, password, date pickers, number, checkbox, radio, file]       |
| size           | number                                                             | 以字符数计的 <input> 元素的可见宽度                       | \*                                                                                                 |
| src            | url                                                                | 提交按钮的图像的 URL                                      | image                                                                                              |
| step           | number                                                             | <input> 元素的合法数字间隔                                | [number, range, date, datetime, datetime-local, month, time, week]                                 |
| value          | text                                                               | <input> 元素 value 的值                                   | [[button,reset,submit]/(按钮文本),[text,password,hidden]/(初始值),[checkbox,radio,image]/(关联值)] |
| width          | pixels                                                             | <input> 元素的宽度                                        | image                                                                                              |
| height         | pixels                                                             | <input> 元素的高度                                        | image                                                                                              |

#### textarea

textarea: 定义一个多行的文本输入控件。

- 特有属性：[rows | cols | wrap];wrap 有两个值：hard & soft

```html
<textarea name="introduce" cols="10" rows="2"></textarea>
```

#### option

- 特有属性： [ selected ]

#### select

select: 创建下拉列表。

- 特有属性：[multipe | size ]

```css
select,
input[type="text"] {
  width: 200px;
  padding: 10px;
}
```

```html
<select name="course">
  <!-- <option value="--please select course--" >--please select course--</option> -->
  <optgroup label="Web">
    <option value="HTML">HTML</option>
    <option value="CSS" selected>CSS</option>
    <option value="JS">JS</option>
  </optgroup>
  <optgroup label="Server">
    <option value="JAVA">JAVA</option>
    <option value="PHP">PHP</option>
  </optgroup>
</select>
```

- select 相关的 js：
  - new Option(text,value)
    ```js
    document.querySelector("select").options.add(new Option("txt", "val"));
    ```
  - options.length
    ```js
    document.querySelector("select").options.length;
    ```
  - 修改选中值
    ```js
    document.querySelector("select").options[3].selected = true;
    ```
  - 查询选中的索引
    ```js
    document.querySelector("select").selectedIndex;
    ```
  - 查询选中值
    ```js
    document.querySelector("select").value;
    document.querySelectorAll("option")[
      document.querySelector("select").selectedIndex
    ].value;
    ```
- select 相关的 css：
  select 框的样式可以修改，option 的样式不好改

#### datalist

datalist: 规定了 <input> 元素可能的选项列表。

- list 属性引用 <datalist> 元素，其中包含 <input> 元素的预定义选项。

```html
<input type="text" placeholder="--please select course--" list="course" />
<datalist id="course">
  <option value="HTML">HTML</option>
  <option value="CSS" selected>CSS</option>
  <option value="JS">JS</option>
  <option value="JAVA">JAVA</option>
  <option value="PHP">PHP</option>
</datalist>
```

- datalist 相关的 js：
  - new Option(text,value)
    ```js
    let newEl = document.createElement("option");
    newEl.setAttribute("value", "test");
    newEl.innerHTML = "test";
    document.querySelector("datalist").appendChild(newEl);
    ```
  - options.length
    ```js
    document.querySelector("datalist").options.length;
    ```
  - 修改选中值
    ```js
    document.querySelector("[type='text']").value =
      document.querySelector("datalist").options[1].value;
    ```
  - 查询选中值
    ```js
    document.querySelector("[type='text']").value;
    ```

#### 时间

特有属性： max ,min ,step ,value 可以设置默认值

```html
<input type="date" placeholder="date" />
<input type="datetime" placeholder="datetime" />
<input type="datetime-local" placeholder="datetime-local" />
<input type="month" placeholder="month" />
<input type="week" placeholder="week" />
<input type="time" placeholder="time" />
```

- 修改日期控件的样式
  ::-webkit-datetime-edit – 控制编辑区域的
  ::-webkit-datetime-edit-fields-wrapper – 控制年月日这个区域的
  ::-webkit-datetime-edit-text – 这是控制年月日之间的斜线或短横线的
  ::-webkit-datetime-edit-month-field – 控制月份
  ::-webkit-datetime-edit-day-field – 控制具体日子
  ::-webkit-datetime-edit-year-field – 控制年文字, 如 2017 四个字母占据的那片地方
  ::-webkit-inner-spin-button – 这是控制上下小箭头的
  ::-webkit-calendar-picker-indicator – 这是控制下拉小箭头的
  ::-webkit-clear-button –这是控制清除按钮的

* 年份[1-99999],月份[1,12],周[1,53],日期[1,31],小时[0,23],分钟[0,59]
* 2 月的日期不会只能调整，上限依旧是 31
* value 属性可以返回选择的日期，格式是字符串
* time 设置 step="非 60 倍数"的可以具体到秒输入
* max，min 的设置不一定有效
* [type='datetime']不一定支持

#### 按钮

```html
<input type="button" value="button" />
<input type="submit" value="submit" />
<input type="reset" value="reset" />
<input
  type="image"
  src="../image/o_200723013825miku1.png"
  placeholder="image"
/>
```

- [type='image']一般 src 和 alt 需要结合使用，如果图片不显示则显示 alt 的内容。
- [type='image']本质是 submit 按钮

#### 文本

```html
<input type="text" placeholder="text" />
<input type="password" placeholder="password" />
<input type="tel" placeholder="tel" />
<input type="url" placeholder="url" />
<input type="email" placeholder="email" />
```

- password 的输入会被掩码，更改[type='password']的 type 为[type="text"]可以明码显示
- 在触屏端点击[type='tel']的输入框时，跳出的虚拟键盘为电话键盘（1-9、\*、#）。

#### 选择按钮

特有属性： name, checked ,value;根据 name 值给选择按钮分组，根据 value 值返回选择内容

```html
<input type="checkbox" placeholder="checkbox" />
<input type="radio" placeholder="radio" />
```

#### 文件

特有属性： accept, capture ,files，multiple;

```html
<input type="file" placeholder="file" />
```

- accept：MIME 类型，允许哪种格式的文件；例如"accept="image/\*"
- capture: 如果 accept (en-US) 属性指出了 input 是图片或者视频类型，则它指定了使用哪个摄像头去这些数据。值 user 表示应该使用前置摄像头和/或麦克风。值 environment 表示应该使用后置摄像头和/或麦克风

#### 颜色

```html
<input type="file" placeholder="file" />
```

- value 返回的值是十六进制颜色码

#### 数值

特有属性： max, min ,step;

```html
<input type="number" placeholder="number" />
<input type="range" placeholder="range" />
```

- 修改[type='range']控件的样式：
  ::-webkit-slider-thumb,::-moz-range-thumb：滑块(thumb)
  ::-webkit-slider-runnable-track,::-moz-range-track：滑动轨道(track)
  ::-moz-range-progress：填充进度条
  - IE9
    ::-ms-track 滑动轨道，::-ms-thumb：滑块，::-ms-fill-lower：已填充部分，::-ms-fill-upper：未填充部分
    详情可参考：https://blog.csdn.net/weixin_38930535/article/details/79542130

#### 搜索

```html
<input type="search" placeholder="search" />
```

- 修改[type='search']控件的样式：
  ::-webkit-input-placeholder：placeholder 占位符
  ::-webkit-search-cancel-button：默认的取消按钮
  苹果 6 ios10 的搜索框是椭圆形，可以用下面语句去除：
  ```css
  input[type="search"] {
    -webkit-appearance: none; //去除ios下input 椭圆形
  }
  ```

* [type="search"]必须在含有 action 属性的 form 里面，虚拟键盘的 Done 键才会变成 Search 键

#### 隐藏

```html
<input type="hidden" placeholder="hidden" />
```

- 收集或发送信息
