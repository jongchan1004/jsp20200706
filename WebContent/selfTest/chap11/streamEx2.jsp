<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

${ lst = [1,2,3,4,5]; ''}

${ lst.stream()
	.filter(x->x%2 == 0)
	.map(x->x*x)
	.toList() } <br />

${ lst.stream().sum() }
