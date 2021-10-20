### HTML5 Fundamentals Example

#### header

hesder: 定义文档的页眉.

```html
<header>
  <h1>
    <a href="#" title="Link to this post" rel="bookmark">Article Heading</a>
  </h1>
</header>
```

#### hgroup

hgroup: 用于对网页或区段（section）的标题进行组合。常用于主副标题。

```html
<header>
  <hgroup>
    <h1>Acme United</h1>
    <h2>A Simple HTML5 Example</h2>
  </hgroup>
</header>
```

#### nav

nav: 定义导航链接的部分。

- 一个网页也可能含有多个<nav>元素,例如一个是网站内的导航列表,另一个是本页面内的导航列表.

```html
<nav>
  <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">About Us</a></li>
    <li><a href="#">Contact Us</a></li>
  </ul>
</nav>
```

#### article

article: 定义的内容本身必须是有意义的且必须是独立于文档的其余部分。
article 里的内容多数是： [ 论坛帖子 | 博客文章 | 新闻故事 | 评论 ]

```html
<article>
  <header>
    <h1>
      <a href="#" title="Link to this post" rel="bookmark">Article Heading</a>
    </h1>
  </header>
  <p>
    Primum non nocere ad vitam paramus tu quoque. Mutatis mutandis de gustibus
    et coloribus non est disputandum Ad infinitum, ad nauseum.
  </p>
  <section>
    <header>
      <h1>This is the first section heading</h1>
    </header>
    <p>
      Scientia potentia est qua nocent docent ars longa, Vita brevis alea lacta
      est vici. P rimum non nocere quid pro quo. Audaces fortuna iuvat fortes
      fortuna adiuvat.
    </p>
  </section>
</article>
```

#### section

section: 定义了文档的某个区域。比如章节、头部、底部或者文档的其他区域。

```html
<section>
  <header>
    <h1>This is the first section heading</h1>
  </header>
  <p>
    Scientia potentia est qua nocent docent ars longa, Vita brevis alea lacta
    est vici. P rimum non nocere quid pro quo. Audaces fortuna iuvat fortes
    fortuna adiuvat.
  </p>
</section>
```

#### aside

aside: 定义 <article> 标签外的内容。类似文章注释。

```html
<aside>
  <p>
    This is an aside that has multiple lines.Primum non nocere ad vitam paramus
    tu quoque. Mutatis mutandis de gustibus et coloribus non est disputandum Ad
    infinitum, ad nauseum.
  </p>
</aside>
```

#### figure

figure: 规定独立的流内容（图像、图表、照片、代码等等）。

- figure 元素的内容应该与主内容相关，但如果被删除，则不应对文档流产生影响。
- 请使用 <figcaption> 元素为 figure 添加标题（caption）。
- "figcaption" 元素应该被置于 "figure" 元素的第一个或最后一个子元素的位置。

```html
<figure>
  <img
    src="../img/LaBiXiaoXin.jpg"
    alt="Photograph of Stonehenge"
    width="200"
    height="131"
  />
  <figcaption>Figure 1. Stonehenge</figcaption>
</figure>
```

#### param
param: 允许您为插入 XHTML 文档的对象规定 run-time 设置，也就是说，此标签可为包含它的 <object> 提供参数。

#### objec
object: 定义一个嵌入的对象。用于包含对象，比如图像、音频、视频、Java applets、ActiveX、PDF 以及 Flash。
```html
<object data="horse.mp3">
   <param name="autoplay" value="true">
</object>
```

#### audio
audio: 定义声音，比如音乐或其他音频流。
* 目前，<audio> 元素支持的3种文件格式：MP3、Wav、Ogg。
* 提示：可以在 <audio> 和 </audio> 之间放置文本内容，这些文本信息将会被显示在那些不支持 <audio> 标签的浏览器中。
##### Attributes

| attr   | values                   | function                             | attr | values | function   |
| -------- | ------------------------ | ------------------------------------ | ------ | ------ | ---------- |
| autoplay | autoplay                 | 自动播放                             | loop   | loop   | 循环播放   |
| controls | controls                 | 控制条                               | muted  | muted  | 静音播放   |
| src    | URL    | 视频的 URL | preload  | [auto , metadata , none] | 视频在页面加载时进行加载,同 autoplay | 

```html
<audio controls>
  <source src="https://www.runoob.com/try/demo_source/horse.mp3" >
<p>您的浏览器不支持 audio 元素。</p>
</audio>
```
#### track
track: 为媒体元素（比如 <audio> and <video>）规定外部文本轨道，也就是字幕，字幕格式有 WebVTT 格式（.vtt 格式文件）。
这个元素用于规定字幕文件或其他包含文本的文件，当媒体播放时，这些文件是可见的。

#### video

video: 定义视频，比如电影片段或其他视频流。

- 目前，<video> 元素支持三种视频格式：MP4、WebM、Ogg。
* 提示：可以在 <video> 和 </video> 标签之间放置文本内容，这样不支持 <video> 元素的浏览器就可以显示出该标签的信息。

##### Attributes

| attr   | values                   | function                             | attr | values | function   |
| -------- | ------------------------ | ------------------------------------ | ------ | ------ | ---------- |
| autoplay | autoplay                 | 自动播放                             | loop   | loop   | 循环播放   |
| controls | controls                 | 控制条                               | muted  | muted  | 静音播放   |
| width    | pixels                   | 宽度                                 | height | pixels | 高度       |
| poster   | URL                      | 下载时显示的图像                     | src    | URL    | 视频的 URL |
| preload  | [auto , metadata , none] | 视频在页面加载时进行加载,同 autoplay |        |        |            |

```html
<video controls autoplay loop>
  <source src="https://www.runoob.com/video/php/friday.mp4" type="video/mp4" />
  <!-- 不支持video时用embed -->
  <object data="https://www.runoob.com/video/php/friday.mp4" width="320" height="240" >
    <embed src="https://www.runoob.com/video/php/friday.mp4" width="320" height="240" />
  </object>
  <!-- 不支持嵌入视频时的文案 -->
  <div class="no-html5-video">
    <p>This video will work in Mozilla Firefox or Google Chrome only.</p>
  </div>
  <!-- 字幕 -->
  <track default kind="captions" srclang="en" src="https://www.runoob.com/video/php/friday.vtt" />
</video>
```

#### footer

footer: 定义文档或节的页脚。

- 页脚通常包含文档的作者、版权信息、使用条款链接、联系信息等等。
- 提示：假如您使用 <footer> 元素来插入联系信息，应该在 <footer> 元素内使用 <address> 标签。

```html
<footer>
  <p>&copy; 2011 Acme United. All rights reserved.</p>
</footer>
```
