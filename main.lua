-- 入口文件
require("variable")

-- 关键字：
    -- and	break	do	else
    -- elseif	end	false	for
    -- function	if	in	local
    -- nil	not	or	repeat
    -- return	then	true	until
    -- while	goto	

-- 全局变量：
    -- 全局变量不需要声明，给一个变量赋值后即创建了这个全局变量，访问一个没有初始化的全局变量也不会出错，只不过得到的结果是：nil

-- 数据类型
    -- nil	这个最简单，只有值nil属于该类，表示一个无效值（在条件表达式中相当于false）。
    -- boolean	包含两个值：false和true。
    -- number	表示双精度类型的实浮点数
    -- string	字符串由一对双引号或单引号来表示
    -- function	由 C 或 Lua 编写的函数
    -- userdata	表示任意存储在变量中的C数据结构
    -- thread	表示执行的独立线路，用于执行协同程序
    -- table	Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字、字符串或表类型。在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。

print(type(a)) -- 判断一个变量的类型