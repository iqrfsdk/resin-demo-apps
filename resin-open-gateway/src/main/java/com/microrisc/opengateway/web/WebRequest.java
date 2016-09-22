/* 
 * Copyright 2016 MICRORISC s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.microrisc.opengateway.web;

/**
 * Web request.
 * 
 * @author Michal Konopa
 */
public final class WebRequest {
    
    private final String topic;
    private final String data;
    
    
    /**
     * Creates new object of Web request with specified topic and data.
     * @param topic topic
     * @param data data
     */
    public WebRequest(String topic, String data) {
        this.topic = topic;
        this.data = data;
    }

    /**
     * @return the topic
     */
    public String getTopic() {
        return topic;
    }

    /**
     * @return the data
     */
    public String getData() {
        return data;
    }
    
}
