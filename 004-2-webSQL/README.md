### HTML Storage-WebSQL

1. openDatabase：这个方法使用现有的数据库或者新建的数据库创建一个数据库对象。
   openDatabase(db_name, version, describe, db_size, callback)

   - `callback` 会在创建数据库后被调用。

   ```js
   var db = openDatabase("mydb", "1.0", "Test DB", 2 * 1024 * 1024);
   ```

2. transaction：这个方法让我们能够控制一个事务，以及基于这种情况执行提交或者回滚。
     ```js
     db.transaction(function (tx) {
       tx.executeSql("CREATE TABLE IF NOT EXISTS LOGS (id unique, log)");
     });
     ```

3. executeSql：这个方法用于执行实际的 SQL 查询。
   
   tx.executeSql( sqlquery,[],dataHandler,errorHandler )
   * 执行executeSql后，dataHandler回调函数中有一个参数result。其数据类型为 SQLResultSet 。
   * SQLResultSet{insertId [long], rowsAffected [long], rows[SQLResultSetRowList]}
     * insertId：是执行插入操作时，表示数据第几个插入到表中，插入多个数据时，返回最后一个数据对应的序号
     * rowsAffected：表示被影响的行数，例如，执行更新操作，更新了一个数据，那么它为1
     * rows：返回一个 SQLResultSetRowList 类型的数据。SQLResultSetRowList{length [long], item}

   * 创建表
     ```js
     db.transaction(function (tx) {
       tx.executeSql("CREATE TABLE IF NOT EXISTS LOGS (id unique, log)");
     });
     ```

   * 删除表
     ```js
     db.transaction(function (tx) {
       tx.executeSql("DROP TABLE LOGS",[],function(){
           alert('DROP TABLE SUCCEED');
       },function(){
           alert('DROP　TABLE FAILED');
       });
     });
     ```


   - 插入数据

     ```js
     db.transaction(function (tx) {
       tx.executeSql("INSERT INTO LOGS (id,unique,log) VALUES (?, ?, ?)", [ e_id, e_unique, e_log, ]);
     });
     ```

   - 查询数据

     ```js
     db.transaction(function (tx) {
       tx.executeSql( "SELECT * FROM LOGS", [], function (tx, results) {
           var len = results.rows.length, i, msg = "<p>查询记录条数: " + len + "</p>";
           document.querySelector("#status").innerHTML += msg;
           for (i = 0; i < len; i++) {
             alert(results.rows.item(i).log);
           }
         }, null );
     });
     ```

   - 删除数据

     ```js
     db.transaction(function (tx) {
       tx.executeSql("DELETE FROM LOGS WHERE id=?", [id]);
     });
     ```

   - 更新数据
     ```js
     db.transaction(function (tx) {
       tx.executeSql("UPDATE LOGS SET log='www.w3cschool.cc' WHERE id=?", [id]);
     });
     ```
#### 是否支持WebSQL

```js
if (window.openDatabase) { // 操作 web SQL        
} else {
     alert('当前浏览器不支持 webSQL !!!');
}
```

#### W3C规范

链接： https://www.w3.org/TR/webdatabase/#dom-sqltransaction-sync-executesql

該規範不再處於積極維護中，Web 應用程序工作組不打算進一步維護它。

#### 特点
* 有更大的存储空间（可自定义设置），跨域读写，存储结构自由等特点。
* 关闭窗口不会自动清除
* 数据存储以表格形式而不是键值对
