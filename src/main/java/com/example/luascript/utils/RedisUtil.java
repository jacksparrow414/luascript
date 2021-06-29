package com.example.luascript.utils;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.script.DefaultRedisScript;
import org.springframework.scripting.support.ResourceScriptSource;
import org.springframework.stereotype.Component;

import java.util.Collections;

@Component
@Slf4j
public class RedisUtil {

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    public void callLuaScripts(String luaScriptName, String key, String value) {
        DefaultRedisScript script = new DefaultRedisScript();
        script.setScriptSource(new ResourceScriptSource(new ClassPathResource("/luascripts/" + luaScriptName + ".lua")));
        script.setResultType(String.class);
        String execute = (String) redisTemplate.execute(script, Collections.singletonList(key), value);
        log.info(execute);
    }
}
