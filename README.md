# PPTranslator

在iOS开发过程中，经常会遇到汉字拼音排序，特别是通讯录类应用，那么汉字转拼音首字母的接口就必不可少了，这里开源下我自己封装的库.

### 1. 使用说明
该库使用起来非常容易，只需3步

* 步骤1 - 拷贝
	<pre>拷贝PPTranslator/PPTranslator文件夹到您的工程目录中</pre>
* 步骤2 - 引用头文件
	<pre>#import "PPTranslator.h"</pre>
* 步骤3 - 使用
	<pre>[@"您好" translatorToPinYinFirstAscii];</pre>

### 2. 关于汉字数
该库支持3W多汉字，可以说容纳了几乎所有汉字，因此不用担心某些汉字转换不了的问题.

### 3. 关于效率
该库使用了Apple的NSDictionary对象进行检索，虽然不知道内部是用了什么算法，但Apple一向精益求精，因此效率应该不是问题.

### 4. 联系方式
若您在使用过程中，有遇到任何问题，可以联系我，我的email:lvyexuwenfa100@126.com

### 5. LICENSE
该库遵循MIT协议，可以自由使用，无需担心版权.


