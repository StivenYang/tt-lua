
-- 定义一个table
tab1 = {key1 = "k1", key2 = "k2", "v3"}

for k, v in pairs(tab1) do
    print(k .. "-" .. v)
end

-- tab1 = nil
-- for k, v in pairs(tab1) do -- 发生异常
--     print(k .. "-" .. v)
-- end

-- nil作为比较的时候，需要加上双引号
type(X) -- string


-- lua把false和nil看做是false，其他都是true
print(type(true))
print(type(nil))
print(type(false))

-- lua里面的number默认都是双精度小数double
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))

-- lua里面的字符串可以是一串单引号 or 双引号包起来的字符，也可以用[[]] 包起来，表示一个块
string1 = "this is string1"
string2 = 'this is string2'
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(html)

-- 对于数字字符串相加，lua会把数字字符串作为数字来进行运算
print("2" + 6) -- 8
print("2 + 6")  -- 2 + 6
-- print("error" + 1)  -- 报错：stdin:1: attempt to perform arithmetic on a string value

-- 字符串连接使用 ..
print("a" .. 'b')
print(157 .. 428)

-- 使用#来计算字符串的长度
len = "www.runoob.com"
print(#len) -- 14
print(#"www.runoob.com") --14

-- 创建一个表
-- 创建一个空的 table
local tbl1 = {}
-- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}

--Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串。
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. ":" .. v)
end

-- lua的function被当做第一类值。和js一样
function factorial1(n)
    if n == 0 then 
        return 1
    else
        return n * factorial1(n-1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))

-- 函数可以以匿名函数的方式通过参数传递
function testFun(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end

tab = {key1= "value1", key2="value2"}
testFun(tab, 
function(key, value)
    return key .. "=" .. value
end
)

-- thread
-- 在 Lua 里，最主要的线程是协同程序（coroutine）。它跟线程（thread）差不多，拥有自己独立的栈、局部变量和指令指针，可以跟其他协同程序共享全局变量和其他大部分东西。
-- 线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起（suspend）时才会暂停。

-- userdatauserdata 是一种用户自定义数据，用于表示一种由应用程序或 C/C++ 语言库所创建的类型，可以将任意 C/C++ 的任意数据类型的数据（通常是 struct 和 指针）存储到 Lua 变量中调用。

-- lua变量
-- Lua 变量有三种类型：全局变量、局部变量、表中的域。
-- Lua 中的变量全是全局变量，哪怕是语句块或是函数里，除非用 local 显式声明为局部变量。
-- 局部变量的作用域为从声明位置开始到所在语句块结束。
-- 变量的默认值均为 nil。

a = 5               -- 全局变量
local b = 5         -- 局部变量

function joke()
    c = 5           -- 全局变量
    local d = 6     -- 局部变量
end

joke()
print(c,d)          --> 5 nil

do
    local a = 6     -- 局部变量
    b = 6           -- 对局部变量重新赋值
    print(a,b);     --> 6 6
end

print(a,b)      --> 5 6

-- 赋值语句
a = "hello" .. "world"
t.n = t.n + 1

-- Lua 可以对多个变量同时赋值，变量列表和值列表的各个元素用逗号分开，赋值语句右边的值会依次赋给左边的变量。
a, b = 10, 2*x       -->       a=10; b=2*x

-- 遇到赋值语句Lua会先计算右边所有的值然后再执行赋值操作，所以我们可以这样进行交换变量的值：
x, y = y, x                     -- swap 'x' for 'y'
a[i], a[j] = a[j], a[i]         -- swap 'a[i]' for 'a[j]'

-- 当变量个数和值的个数不一致时，Lua会一直以变量个数为基础采取以下策略：
-- a. 变量个数 > 值的个数             按变量个数补足nil
-- b. 变量个数 < 值的个数             多余的值会被忽略
a, b, c = 0, 1
print(a,b,c)             --> 0   1   nil
 
a, b = a+1, b+1, b+2     -- value of b+2 is ignored
print(a,b)               --> 1   2
 
a, b, c = 0
print(a,b,c)             --> 0   nil   nil

-- 上面最后一个例子是一个常见的错误情况，注意：如果要对多个变量赋值必须依次对每个变量赋值。
a, b, c = 0, 0, 0
print(a,b,c)             --> 0   0   0

-- 多值赋值经常用来交换变量，或将函数调用返回给变量：
a, b = f()

-- f()返回两个值，第一个赋给a，第二个赋给b。
-- 应该尽可能的使用局部变量，有两个好处：
-- 1. 避免命名冲突。
-- 2. 访问局部变量的速度比全局变量更快。

-- 索引
-- 对 table 的索引使用方括号 []。Lua 也提供了 . 操作
t[i]
t.i                 -- 当索引为字符串类型时的一种简化写法
gettable_event(t,i) -- 采用索引访问本质上是一个类似这样的函数调用

