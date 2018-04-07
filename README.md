# Delete_Raw
选择表格中的某一行，然后点击删除它。


tst（）函数获取点击对象的事件然后将对象设置为“可读”的。



 $('tbody').on('click','tr',function(){$(this).toggleClass('red').siblings().removeClass('red');removeRaw(this)});
 
 
 当表格触发点击事件后，获取表格中点击的这一行的对象将这一行的背景设置的更深，点击下一行又恢复原状；在点击的时候调用removeRaw的方法，获取这一行的对象，
 当我点击删除按钮时，删除这一行。
