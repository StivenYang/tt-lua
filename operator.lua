-- 运算符

-- 运算符是一个特殊的符号，用于告诉解释器执行特定的数学或逻辑运算。Lua提供了以下几种运算符类型：

-- 算术运算符
-- 操作符	描述	实例
-- +	加法	A + B 输出结果 30
-- -	减法	A - B 输出结果 -10
-- *	乘法	A * B 输出结果 200
-- /	除法	B / A 输出结果 2
-- %	取余	B % A 输出结果 0
-- ^	乘幂	A^2 输出结果 100
-- -	负号	-A 输出结果 -10
-- //	整除运算符(>=lua5.3)	5//2 输出结果 2

-- 关系运算符
-- 操作符	描述	实例
-- ==	等于，检测两个值是否相等，相等返回 true，否则返回 false	(A == B) 为 false。
-- ~=	不等于，检测两个值是否相等，不相等返回 true，否则返回 false	(A ~= B) 为 true。
-- >	大于，如果左边的值大于右边的值，返回 true，否则返回 false	(A > B) 为 false。
-- <	小于，如果左边的值大于右边的值，返回 false，否则返回 true	(A < B) 为 true。
-- >=	大于等于，如果左边的值大于等于右边的值，返回 true，否则返回 false	(A >= B) 返回 false。
-- <=	小于等于， 如果左边的值小于等于右边的值，返回 true，否则返回 false	(A <= B) 返回 true。

-- 逻辑运算符
-- 操作符	描述	实例
-- and	逻辑与操作符。 若 A 为 false，则返回 A，否则返回 B。	(A and B) 为 false。
-- or	逻辑或操作符。 若 A 为 true，则返回 A，否则返回 B。	(A or B) 为 true。
-- not	逻辑非操作符。与逻辑运算结果相反，如果条件为 true，逻辑非为 false。	not(A and B) 为 true。

-- 其他运算符
-- 操作符	描述	实例
-- ..	连接两个字符串	a..b ，其中 a 为 "Hello " ， b 为 "World", 输出结果为 "Hello World"。
-- #	一元运算符，返回字符串或表的长度。	#"Hello" 返回 5

-- 运算符优先级
-- 从高到低的顺序：

-- ^
-- not    - (unary)
-- *      /       %
-- +      -
-- ..
-- <      >      <=     >=     ~=     ==
-- and
-- or

