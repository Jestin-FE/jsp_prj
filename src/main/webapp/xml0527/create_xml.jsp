<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="org.jdom2.output.Format"%>
<%@page import="org.jdom2.output.XMLOutputter"%>
<%@page import="org.jdom2.Element"%>
<%@page import="org.jdom2.Document"%>
<%@ page language="java" contentType="application/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
    info=""%>

<%
// 1. XML문서객체 생성
Document doc = new Document();

// 2. 최상위 부모 노드 생성
Element rootNode = new Element("root");

// 3. 자식 노드 생성
Element msgNode = new Element("msg");
// 자식노드에 값 설정
System.out.println(msgNode);
msgNode.setText("안녕하세요?");

// 자식노드를 부모노드에 배치
rootNode.addContent(msgNode);
// 모든 자식노드를 가진 부모노드를 문서객체에 배치
doc.addContent(rootNode);

// 출력객체 생성
//XMLOutputter xOut = new XMLOutputter(Format.getRawFormat()); // 구조 그대로 출력
//XMLOutputter xOut = new XMLOutputter(Format.getCompactFormat()); // 파일 크기 최소화 목적
XMLOutputter xOut = new XMLOutputter(Format.getPrettyFormat()); // 사람이 읽기 편하게
try {
	// out 내장객체를 할당하면 web browser로 출력한다.
	xOut.output(doc, out);
	// 파일로 출력
	xOut.output(doc, new FileOutputStream("C:/dev/workspace/jsp_prj/src/main/webapp/xml0527/create.xml"));
} catch (IOException e) {
	e.printStackTrace();
}
%>