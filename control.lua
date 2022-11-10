-- 流程控制语句


-- 循环语句
-- while循环、for循环、repeat...util循环、循环嵌套

-- 循环控制语句
-- break、goto

-- while
a=10
while( a < 20 )
do
   print("a 的值为:", a)
   a = a+1
end

-- 数值for循环
-- for var=exp1,exp2,exp3 do  
--     <执行体>  
-- end  
-- var 从 exp1 变化到 exp2，每次变化以 exp3 为步长递增 var，并执行一次 "执行体"。exp3 是可选的，如果不指定，默认为1。
for i=1,f(x) do
    print(i)
end
 
for i=10,1,-1 do
    print(i)
end

-- for的三个表达式在循环开始前一次性求值，以后不再进行求值。比如上面的f(x)只会在循环开始前执行一次，其结果用在后面的循环中
function f(x)  
    print("function")  
    return x*2  
end  
for i=1,f(5) do print(i)  
end

-- 泛型for循环
-- 泛型 for 循环通过一个迭代器函数来遍历所有值，类似 java 中的 foreach 语句。
a = {"one", "two", "three"}
for i, v in ipairs(a) do
    print(i, v)
end 
-- i是数组索引值，v是对应索引的数组元素值。ipairs是Lua提供的一个迭代器函数，用来迭代数组。
days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}  
for i,v in ipairs(days) do  print(v) end

-- repeat...until 循环
-- Lua 编程语言中 repeat...until 循环语句不同于 for 和 while循环，for 和 while 循环的条件语句在当前循环执行开始时判断，而 repeat...until 循环的条件语句在当前循环结束后判断。
-- repeat
-- statements
-- until( condition )

--[ 变量定义 --]
a = 10
--[ 执行循环 --]
repeat
   print("a的值为:", a)
   a = a + 1
until( a > 15 )

-- 循环嵌套
-- for init,max/min value, increment
-- do
--    for init,max/min value, increment
--    do
--       statements
--    end
--    statements
-- end

-- while(condition)
-- do
--    while(condition)
--    do
--       statements
--    end
--    statements
-- end

-- repeat
--     statements
--     repeat
--        statements
--     until( condition )
--  until( condition )

-- if语句
-- 控制结构的条件表达式结果可以是任何值，Lua认为false和nil为假，true和非nil为真。
-- 要注意的是Lua中 0 为 true

-- if(布尔表达式)
-- then
--    --[ 在布尔表达式为 true 时执行的语句 --]
-- end

-- if(布尔表达式)
-- then
--    --[ 布尔表达式为 true 时执行该语句块 --]
-- else
--    --[ 布尔表达式为 false 时执行该语句块 --]
-- end

-- if( 布尔表达式 1)
-- then
--    --[ 在布尔表达式 1 为 true 时执行该语句块 --]
-- elseif( 布尔表达式 2)
-- then
--    --[ 在布尔表达式 2 为 true 时执行该语句块 --]
-- elseif( 布尔表达式 3)
-- then
--    --[ 在布尔表达式 3 为 true 时执行该语句块 --]
-- else 
--    --[ 如果以上布尔表达式都不为 true 则执行该语句块 --]
-- end

-- if( 布尔表达式 1)
-- then
--    --[ 布尔表达式 1 为 true 时执行该语句块 --]
--    if(布尔表达式 2)
--    then
--       --[ 布尔表达式 2 为 true 时执行该语句块 --]
--    end
-- end