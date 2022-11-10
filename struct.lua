-- lua常用的基本数据结构

-- table 是 Lua 的一种数据结构用来帮助我们创建不同的数据类型，如：数组、字典等。
-- Lua table 使用关联型数组，你可以用任意类型的值来作数组的索引，但这个值不能是 nil。
-- Lua table 是不固定大小的，你可以根据自己需要进行扩容。
-- Lua也是通过table来解决模块（module）、包（package）和对象（Object）的。 例如string.format表示使用"format"来索引table string

-- table初始化
    -- 初始化表
    mytable = {}

    -- 指定值
    mytable[1]= "Lua"

    -- 移除引用
    mytable = nil
    -- lua 垃圾回收会释放内存

-- table的常用方法
    table.concat (table [, sep [, start [, end]]]):
    -- concat是concatenate(连锁, 连接)的缩写. table.concat()函数列出参数中指定table的数组部分从start位置到end位置的所有元素, 元素间以指定的分隔符(sep)隔开。
    table.insert (table, [pos,] value):
    -- 在table的数组部分指定位置(pos)插入值为value的一个元素. pos参数可选, 默认为数组部分末尾.
    table.remove (table [, pos])
    -- 返回table数组部分位于pos位置的元素. 其后的元素会被前移. pos参数可选, 默认为table长度, 即从最后一个元素删起。
    table.sort (table [, comp])
    -- 对给定的table进行升序排序。
-- 注意：
-- 当我们获取 table 的长度的时候无论是使用 # 还是 table.getn 其都会在索引中断的地方停止计数，而导致无法正确取得 table 的长度。
-- 可以使用以下方法来代替：
    -- function table_leng(t)
    --     local leng=0
    --     for k, v in pairs(t) do
    --       leng=leng+1
    --     end
    --     return leng;
    --   end