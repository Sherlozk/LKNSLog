# LKNSLog

---

- 在AppDelegate中修改`NSLog`的输出路径为日志文件，而不是原来的控制台

- 在.pch中添加宏定义改写`return`使函数return之前都会打印相关信息，可以用作打印调用栈，函数的所在文件、行号等信息
