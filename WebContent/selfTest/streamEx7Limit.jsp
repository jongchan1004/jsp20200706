<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
${ vals = [20,17,30,2,9,23];
	limtedVals = vals.stream()
		.limit(3)
		.toList()}
