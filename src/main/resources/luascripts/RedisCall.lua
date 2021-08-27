-- lua脚本中调用Redis
-- lua中用到的redis.开头的命令可以在 https://redis.io/commands/eval 搜相关命令即可
local rc, rl, ll, key, value = redis.call, redis.log, redis.LOG_NOTICE, KEYS[1], ARGV[1]
local result = rc("SETEX", key, 60, value)
print("result value is:", result)
