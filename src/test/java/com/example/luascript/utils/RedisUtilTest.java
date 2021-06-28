package com.example.luascript.utils;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest
@RunWith(SpringRunner.class)
public class RedisUtilTest {

    @Autowired
    private RedisUtil redisUtil;

    @Test
    public void assertCallLuaScripts() {
        redisUtil.callLuaScripts("RedisCall", "etix", "ticket");
    }
}