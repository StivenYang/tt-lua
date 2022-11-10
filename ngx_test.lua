-- ngx测试
-- ngx参数
ngx.arg
-- 变量
ngx.var.VARIABLE
-- 常量
Core constants
-- http method常量
HTTP method constants
-- http status常量
HTTP status constants
-- 日志等级常量
Nginx log level constants
-- 打印函数
print
-- 上下文
ngx.ctx
-- location？
ngx.location.capture
-- location?
ngx.location.capture_multi
-- 状态
ngx.status
-- 请求头
ngx.header.HEADER
-- 响应头的请求头
ngx.resp.get_headers
-- 是否互联网请求？
ngx.req.is_internal
-- 请求开始时间
ngx.req.start_time
-- http 协议版本
ngx.req.http_version
-- raw形式的请求头
ngx.req.raw_header
-- 请求method
ngx.req.get_method
-- set请求头的method
ngx.req.set_method
-- set请求的uri
ngx.req.set_uri
-- set 请求的uri参数
ngx.req.set_uri_args
-- get 请求的uri参数
ngx.req.get_uri_args
-- 获取post请求的参数
ngx.req.get_post_args
-- 获取请求头
ngx.req.get_headers
-- 设置单个请求头
ngx.req.set_header
-- 清除请求头
ngx.req.clear_header
-- ？
ngx.req.read_body
-- ？
ngx.req.discard_body
-- 获取请求的body数据
ngx.req.get_body_data
-- 获取请求的file
ngx.req.get_body_file
ngx.req.set_body_data
ngx.req.set_body_file
-- 初始化请求体？
ngx.req.init_body
-- 扩充请求体？
ngx.req.append_body
-- 完成请求体？
ngx.req.finish_body
-- 请求的socket管道？
ngx.req.socket
-- 继续执行请求（放行）
ngx.exec
-- 重定向请求
ngx.redirect
-- 发送请求头？
ngx.send_headers
-- ？
ngx.headers_sent
-- ngx打印方法？
ngx.print
-- ？
ngx.say
-- ？
ngx.log
-- ？
ngx.flush
-- ？
ngx.exit
-- ？
ngx.eof
-- ？
ngx.sleep
-- 对uri进行转义
ngx.escape_uri
-- 对uri进行反转义
ngx.unescape_uri
-- 编码参数
ngx.encode_args
-- 反编码参数
ngx.decode_args
-- base64编码
ngx.encode_base64
-- base64反编码
ngx.decode_base64
-- ？
ngx.crc32_short
-- ？
ngx.crc32_long
-- ？
ngx.hmac_sha1
-- md5
ngx.md5
-- 二进制md5
ngx.md5_bin
-- sha1编码
ngx.sha1_bin
-- SQL单引号字符串
ngx.quote_sql_str
-- 获取今天
ngx.today
-- 时间
ngx.time
-- 现在
ngx.now
-- 更新时间
ngx.update_time
-- 本地时间
ngx.localtime
-- utc时间
ngx.utctime
-- cookie时间
ngx.cookie_time
-- http时间
ngx.http_time
-- 解析http时间
ngx.parse_http_time
-- ？
ngx.is_subrequest
-- 正则匹配
ngx.re.match
-- 正在查找
ngx.re.find
-- 正则全部匹配
ngx.re.gmatch
-- 正则截取
ngx.re.sub
-- 正则全局截取
ngx.re.gsub
-- ngx共享字典
ngx.shared.DICT
ngx.shared.DICT.get
ngx.shared.DICT.get_stale
ngx.shared.DICT.set
ngx.shared.DICT.safe_set
ngx.shared.DICT.add
ngx.shared.DICT.safe_add
ngx.shared.DICT.replace
ngx.shared.DICT.delete
ngx.shared.DICT.incr
ngx.shared.DICT.lpush
ngx.shared.DICT.rpush
ngx.shared.DICT.lpop
ngx.shared.DICT.rpop
ngx.shared.DICT.llen
ngx.shared.DICT.ttl
ngx.shared.DICT.expire
ngx.shared.DICT.flush_all
ngx.shared.DICT.flush_expired
ngx.shared.DICT.get_keys
ngx.shared.DICT.capacity
ngx.shared.DICT.free_space
-- ？
ngx.socket.udp
udpsock:setpeername
udpsock:send
udpsock:receive
udpsock:close
udpsock:settimeout
-- ？
ngx.socket.stream
-- ？
ngx.socket.tcp
tcpsock:bind
tcpsock:connect
tcpsock:setclientcert
tcpsock:sslhandshake
tcpsock:send
tcpsock:receive
tcpsock:receiveany
tcpsock:receiveuntil
tcpsock:close
tcpsock:settimeout
tcpsock:settimeouts
tcpsock:setoption
tcpsock:setkeepalive
tcpsock:getreusedtimes
-- ？
ngx.socket.connect
ngx.get_phase
ngx.thread.spawn
ngx.thread.wait
ngx.thread.kill
ngx.on_abort
ngx.timer.at
ngx.timer.every
ngx.timer.running_count
ngx.timer.pending_count
-- ？
ngx.config.subsystem
ngx.config.debug
ngx.config.prefix
ngx.config.nginx_version
ngx.config.nginx_configure
ngx.config.ngx_lua_version
-- ？
ngx.worker.exiting
ngx.worker.pid
ngx.worker.pids
ngx.worker.count
ngx.worker.id
-- ？
ngx.semaphore
ngx.balancer
ngx.ssl
ngx.ocsp
-- ？
ndk.set_var.DIRECTIVE
coroutine.create
coroutine.resume
coroutine.yield
coroutine.wrap
coroutine.running
coroutine.status
ngx.run_worker_thread