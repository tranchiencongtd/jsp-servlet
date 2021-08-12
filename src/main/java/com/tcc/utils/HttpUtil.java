package com.tcc.utils;

import java.io.BufferedReader;
import java.io.IOException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class HttpUtil {
	
	String value;
	
	public HttpUtil(String value) {
		this.value = value;
	}
	
	public <T> T toModel(Class<T> tClass) {
		try {
			return new ObjectMapper().readValue(value, tClass);
		} catch (JsonParseException e) {
			System.out.println(e.getMessage());
		} catch (JsonMappingException e) {
			System.out.println(e.getMessage());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	public static HttpUtil of (BufferedReader reader) {
		StringBuilder sb = new StringBuilder();
		try {
			String line;
			while((line = reader.readLine()) != null) {
				sb.append(line);
			}
			return new HttpUtil(sb.toString());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
}
