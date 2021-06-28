package com.example.luascript.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.RedisStandaloneConfiguration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.script.DefaultRedisScript;
import org.springframework.scripting.support.ResourceScriptSource;
import org.springframework.stereotype.Component;

import java.util.Collections;

@Component
public class RedisUtil {

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    public void callLuaScripts(String luaScriptName, String key, String value) {
        DefaultRedisScript script = new DefaultRedisScript();
        script.setScriptSource(new ResourceScriptSource(new ClassPathResource("/luascripts/" + luaScriptName + ".lua")));
        script.setResultType(String.class);
        redisTemplate.execute(script, Collections.singletonList(key), value);
    }
}
