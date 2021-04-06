

## 리눅스의 셸

- apt-get이라는 명령어를 주면 커널(os)가 받아서 처리후 결과를 화면에 뿌려서 보여주는 것이다.

- 이때, 사용자와 커널 사이의 인터페이스를 셸이라고 한다. 

- 우분투 기본 셸은 bash이다.

## 환경변수
- PATH : 실행파일을 찾는 디렉토리 경로의 환경변수

- HOME : 현재 사용자의 홈 디렉토리 환경변수

- `printenv` : 전체 환경변수 확인하기

- `echo $환경변수` : 특정 환경변수 확인하기

- `export 환경변수=값` : 변수 지정하기

![image](https://user-images.githubusercontent.com/77392444/113380738-f72aaf00-93b7-11eb-91ef-bff52e73b6b2.png)

## 셸 스크립트

- 주로 `vi.sh`나 `gedit.sh`으로 작성을 한다. 

- `#!/bin/sh` : 첫행에는 반드시 배시셸을 사용하겠다고 선언해야 한다. 

- `exit` : 문단의 끝에 숫자를 붙여서 작성한다. 왜?

## 셸 스크립트 실행
1. `sh 파일명.sh`

2. `chmod`로 execute속성으로 변경후 `./스크립트파일` 명령을 실행한다. 


## 변수
- 변수는 값을 계속 변경해서 저장하는 개념이다. 

- 모든 값이 String으로 취급되고, 숫자를 넣어도 String으로 취급된다. 

- 변수명을 대/소문자를 구분한다.

- 변수를 대입할 때 `=`(대입연산자) 앞뒤에 공백이 없어야 한다. 

- 변수 값의 중간에 공백이 있다면 `" "`로 묶어야 한다.

- `read` : 키보드로 입력값을 받는 명령어이다. 

- `expr` : 숫자계산을 하기위한 명령어이다. expr 키워드를 사용할 때에는 백쿼트(`)로 묶어서 사용해야 한다.  

- `*` : 곱하기 연산자를 작성하려면 앞에 `\`를 붙여야 한다. 

- `(`, `)` : 수식에 괄호를 사용할때에도 앞에 `\`를 붙여야 한다. 

## 매개변수

- 매개변수는 실행 명령어 뒤에 공백으로 구분하여 주어지는 값을 의미한다.

- 쉘프로그래밍에서는 이를 `$0`, `$1`, `$2`, `$3`...`$n`으로 표현한다.


## 조건문의 비교 연산자

- 문자열 비교 연산자

|문자열 비교|설명|
|----------|----|
|"문자열1"="문자열2"|두 문자열이 같으면 참|
|"문자열1"!="문자열2"|두 문자열이 같지 않으면 참|
|-n "문자열"|문자열이 NULL이 아니면 참|
|-z "문자열"|문자열이 NULL이면 참|

- 산술 비교 연산자


|산술 비교|설명|
|----------|----|
|A -eq B|A, B가 같으면 참|
|A -ne B|A, B가 같지 않으면 참|
|A -gt B|A가 크면 참|
|A -ge B|A가 크거나 같으면 참|
|A -lt B|A가 작으면 참|
|A - le B|A가 작거나 같으면 참|
|!수식|수식이 거짓이면 참|


- 파일 관련 조건

|파일 관련 조건|설명|
|-------------|----|
|-d 파일명 | 파일이 디렉토리이며 참|
|-e 파일명 | 파일이 존재하면 참 |
|-f 파일명 | 파일이 일반 파일이면 참|
|-g 파일명 | 파일에 set-group-id가 설정되면 참|
|-r 파일명 | 파일이 읽기 기능이면 참|
|-s 파일명 | 파일 크기가 0이 아니면 참|
|-u 파일명 | 파일에 set-user-id가 설정되면 참|
|-w 파일명 | 파일이 쓰기 가능이면 참|
|-x 파일명 | 파일이 시행 가능이면 참|




## 관계 연산자 

- AND : `-a` , `&&`

- OR : `-o` , `||`

- `-a`나 `-o`는 테스트문(`[ ]`)안에서 사용할 수 있는데, 괄호 등의 특수문자 앞에는 `\`를 넣어야 한다. 

- `vim andor.sh` : file명을 입력받고 해달파일이 일반 파일이고 size가 0보다 크면 파일 앞 5줄을 출력하도록 입력한 쉘스크립트

![image](https://user-images.githubusercontent.com/77392444/113661845-d5943500-96e1-11eb-9e0e-59447a73d436.png)


- `sh andor.sh`


![image](https://user-images.githubusercontent.com/77392444/113662067-4dfaf600-96e2-11eb-900b-8897a192f086.png)






## if ~ else문

- `if`와 `[ 조건 ]` 사이에 공백이 없으면 오류가 발생한다. `[ 조건 ]` 안 각 단어 사이에도 공백이 있어야 한다.

- `vim if1.sh` 셸 스크립트 작성하기

![image](https://user-images.githubusercontent.com/77392444/113387283-f51c1c80-93c6-11eb-9837-25b46b9af930.png)

- `if1.sh` 실행하기

![image](https://user-images.githubusercontent.com/77392444/113387361-2694e800-93c7-11eb-9c8e-e9c872285208.png)




## if ~ elseif ~ else 문

- 파일 관련 조건 비교하기

![image](https://user-images.githubusercontent.com/77392444/113389465-0c5d0900-93cb-11eb-866c-19c7e3e6fea4.png)

- 수식 관련 연산 비교하기


![image](https://user-images.githubusercontent.com/77392444/113388467-40372f00-93c9-11eb-95b1-1ca094d6ddc8.png)


## case ~ esac문

- `vim case1.sh`

![image](https://user-images.githubusercontent.com/77392444/113658724-86e39c80-96db-11eb-8ada-2a6c43b5507d.png)


- `sh case1.sh`

![image](https://user-images.githubusercontent.com/77392444/113658866-d4600980-96db-11eb-9e59-8a5d8151eb2e.png)


- `vim case2.sh`

![image](https://user-images.githubusercontent.com/77392444/113660407-f3ac6600-96de-11eb-997e-eac6882d9e83.png)

- `sh case2.sh`
  - `[nN][oO]` : 첫번째 글자에 n이나 N, 두번째 글자에 o나 O가 들어가는 문자
  
![image](https://user-images.githubusercontent.com/77392444/113660446-0aeb5380-96df-11eb-9f48-c91d02cca8b3.png)


## for ~ in 문

- `vim forin1.sh`
  - 주의사항 : `변수=값` 을 작성할 때는 `=`의 앞 뒤에 공백이 들어가면 안된다.

![image](https://user-images.githubusercontent.com/77392444/113662392-fa3cdc80-96e2-11eb-9f69-ef6650d04013.png)

- `sh forin1.sh`

![image](https://user-images.githubusercontent.com/77392444/113662431-088af880-96e3-11eb-9c11-905d71941678.png)

- `vim forin2.sh`
  - `fname` 변수에 `ls *.sh`명령의 실행 결과를 하나씩 넣어서 do 아래 문장을 실행한다.

![image](https://user-images.githubusercontent.com/77392444/113663212-9ddabc80-96e4-11eb-8882-824460d4fa6e.png)


- `sh forin2.sh`

![image](https://user-images.githubusercontent.com/77392444/113663261-af23c900-96e4-11eb-9670-3146d420a31e.png)

