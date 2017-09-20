package com.farmers.css.helloworld.controller;

import org.junit.Before;
import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;

public class HelloWorldControllerTest {
    private HelloWorldController subject;

    @Before
    public void setUp() throws Exception {
        subject = new HelloWorldController();
    }

    @Test
    public void greeting() throws Exception {
        assertThat(subject.greeting()).isEqualTo("Hello World!");
    }

}