

## 전역변수와 지역변수

- 전역변수는 함수 내부 및 전체 쉘 프로그램 영역에서 영향을 미친다.

- 만약 변수 처음 선언할 때 앞에 `local`을 붙이면 함수 내부에서만 영향볌위를 미친다. 

- `export` : 특정 변수를 전역 변수로 만들어 모든 쉘에서 사용 가능하게 만든다. 

- 1) `vim export1.sh` : var1과 var2를 출력하는 쉘스크립트 작성

![image](https://user-images.githubusercontent.com/77392444/114682220-d8c69b00-9d49-11eb-9f8b-ce389f012a8a.png)

- 2) `vim export2.sh` : var1을 지역변수로, var2를 전역변수로 설정하고 export1.sh 실행

![image](https://user-images.githubusercontent.com/77392444/114682271-e419c680-9d49-11eb-9604-1b1458350470.png)

- 3) `sh export2.sh` : export2.sh 를 실행

![image](https://user-images.githubusercontent.com/77392444/114682327-f09e1f00-9d49-11eb-8960-c8a06bcc7ea6.png)



## 사용자 정의 함수

- `vim func1.sh` : 사용자 정의 함수 myFunction 작성

![image](https://user-images.githubusercontent.com/77392444/113670068-9cfb5800-96ef-11eb-8b32-6c793fe25a66.png)

- `sh func1.sh` : 사용자 정의 함수 myFunction 실행

![image](https://user-images.githubusercontent.com/77392444/113670125-ab497400-96ef-11eb-967f-537b7b684978.png)

- `vim func2.sh` : 파라미터를 사용한 함수

![image](https://user-images.githubusercontent.com/77392444/113670504-2dd23380-96f0-11eb-983a-51d49c3f93d8.png)


- `sh func2.sh` : 파라미터를 붙여서 함수 호출 실행

![image](https://user-images.githubusercontent.com/77392444/113670553-3dea1300-96f0-11eb-9c36-0769e5025021.png)


## eval

- 명령문을 문자열로 인식하는 `echo`와 달리 문자열을 명령문으로 인식하여 실행하게 한다. 

- 1) 쉘스크립트 작성 : `eval.sh`

![image](https://user-images.githubusercontent.com/77392444/114681286-f5160800-9d48-11eb-8ebf-e4f49dee5ee5.png)

- 2) 쉘스크립트 실행 : `sh eval.sh`

![image](https://user-images.githubusercontent.com/77392444/114681381-0f4fe600-9d49-11eb-9f63-d33d1ea1cf9a.png)


## printf

- `printf` : 형식을 지정하여 출력할 수 있는 명령어이다. 

- `%f` : 숫자 형식을 지정한다. `%5.2f`로 작성하면 총 다섯자리이고, 소수 두 자리까지 출력하라는 의미이다.

- `%s` : 문자 형식을 지정한다.

![image](https://user-images.githubusercontent.com/77392444/114682965-8e91e980-9d4a-11eb-8d8f-4722debd0f2e.png)

## set과 $(명령)

- 리눅스 명령의 결과를 사용하려면 `$(명령)`형식을 사용한다. 

- 명령의 결과를 파라미터로 사용하려면 `set` 명령어를 사용한다. `set $(명령)`을 실행하면 결과의 파라미터가 각각 $1, $2, $3, $4....에 저장된다. 

![image](https://user-images.githubusercontent.com/77392444/114683718-37404900-9d4b-11eb-898a-740209aaf97c.png)

## shift

- 파라미터 변수를 왼쪽으로 한 단계씩 아래로 시프트(이동) 한다. 

- 만약 파라미터 변수로 $1 $2 $3 $4가 저장되어 있다면, [ 처음 : $1   /   shift 1회 수행 후 : $2  /  shift 2회 수행 후 : $3  /  shift 3회 수행 후 : $4 ]

- 1) `vim shift.sh` : shift활용한 사용자 함수 myfunc()만들기

![image](https://user-images.githubusercontent.com/77392444/114685359-bf731e00-9d4c-11eb-92bc-accdc2b75e73.png)

- 2) `sh shift.sh` : shift.sh 실행하기

![image](https://user-images.githubusercontent.com/77392444/114685450-d580de80-9d4c-11eb-98eb-ca2e6e3574e5.png)

## date 형식

- date의 형식을 지정하려면 뒤에 `date +%Y%m%d%H%M%S` 를 사용하면 된다. 

- echo 뒤에 명령어를 실행한 결과를 출력하려면 백쿼트로 묶는다. ![image](https://user-images.githubusercontent.com/77392444/114686316-a028c080-9d4d-11eb-9942-a1dda177adcc.png)

- `date.sh` : 다양한 방식으로 날짜를 출력하는 스크립트

![image](https://user-images.githubusercontent.com/77392444/114686500-cfd7c880-9d4d-11eb-9cb7-e304a1684b6d.png)



