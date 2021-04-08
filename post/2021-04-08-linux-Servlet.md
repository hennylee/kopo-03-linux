## Servlet이란?

## Login Servlet 만들어보기

## Eclipse에서 새로운 프로젝트 생성하기

- Dynamic Web Project 생성 : 프로젝트명은 MyFistApp으로 한다.

![image](https://user-images.githubusercontent.com/77392444/113968433-0a34f780-986e-11eb-8978-fda99c2e81ca.png)

- deploy 설정하기 (web.xml)

![image](https://user-images.githubusercontent.com/77392444/113968455-1751e680-986e-11eb-869e-0adaf290a520.png)


## MyFistApp프로젝트에서 새로운 Servlet 생성하기

- 패키지 생성 : `package kopo.ac.kr`

- Servlet 생성

  - Servlet은 프레임워크이기 때문에 지정된 규칙에 맞게 작성해야 한다.

![image](https://user-images.githubusercontent.com/77392444/113969641-4ff2bf80-9870-11eb-9a36-ae1f53d41cad.png)

![image](https://user-images.githubusercontent.com/77392444/113969722-6f89e800-9870-11eb-8013-9d752ac2f24a.png)

![image](https://user-images.githubusercontent.com/77392444/113969769-89c3c600-9870-11eb-98db-81ccf06a1389.png)


- Tomcat9 폴더의 servlet-api.jar, jsp-api.jar를 프로젝트에 추가하기
  - 만약 Tomcat10을 사용한다면 Tomcat10폴더 내의 lib를 추가해야 한다. 
  - Module이 아니라 ClassPath에 추가하기

![image](https://user-images.githubusercontent.com/77392444/113971116-1a9ba100-9873-11eb-9333-e8e123c47e5c.png)


## index.html
- `webapp` 폴더에 `index.html` 생성하기 

```java
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>MyFirstApp-Login</title>
</head>
<body>
	<h1>Login</h1>
	<form action="login" method="get">
		<label id="id_id"> ID : </label>
		<input type="text" id="id_id" name="id" /><br>
		
		<label id="id_passwd"> PASSWD : </label>
		<input type="text" id="id_passwd" name="pwd" /><br>
		
		<input type="submit" value="로그인" />
	</form>

</body>
</html>
````

## LoginServlet.java

```java
package kopo.ac.kr;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("ID : " + id + "<br>");
		out.println("PASSWORD: " + pwd + "<br>");
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
```


## web.xml
- 여기서 매핑한 url과 Servlet 생성할때 자동 설정 된 url로 모두 접속 가능하게 된다. 

```java
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://xmlns.jcp.org/xml/ns/javaee" xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd" id="WebApp_ID" version="4.0">
  <display-name>MyFirstApp</display-name>
  <welcome-file-list>
    <welcome-file>index.html</welcome-file>
    <welcome-file>index.htm</welcome-file>
    <welcome-file>index.jsp</welcome-file>
    <welcome-file>default.html</welcome-file>
    <welcome-file>default.htm</welcome-file>
    <welcome-file>default.jsp</welcome-file>
  </welcome-file-list>
  
  <servlet>
  	<servlet-name>LoginServlet</servlet-name>
  	<servlet-class>kopo.ac.kr.LoginServlet</servlet-class>
  </servlet>
  
  <servlet-mapping>
  	<servlet-name>LoginServlet</servlet-name>
  	<url-pattern>/login</url-pattern>
  </servlet-mapping>
</web-app>
```

## war파일 Export하기


## 구동시켜보기

### 1. eclipse에서 Server Run하기



### 2. tomcat에 war파일 deploy하기 

- eclise에서 실행시킨 서버 끄기 : `systemctl stop tomcat버전.service`


### 3. 기존 connector에 연결해둔 tomcat에 deploy하기
