-- lua脚本中调用Redis
local rc, rl, ll, key, value = redis.call, redis.log, redis.LOG_NOTICE, KEYS[1], ARGV[1]
local result = rc("SETEX", key, 60, value)
print("result value is:", result)
