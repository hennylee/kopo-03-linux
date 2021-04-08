

## 전역변수와 지역변수

- 전역변수는 함수 내부 및 전체 쉘 프로그램 영역에서 영향을 미친다.

- 만약 변수 처음 선언할 때 앞에 `local`을 붙이면 함수 내부에서만 영향볌위를 미친다. 


## 사용자 정의 함수

- `vim func1.sh` : 사용자 정의 함수 myFunction 작성

![image](https://user-images.githubusercontent.com/77392444/113670068-9cfb5800-96ef-11eb-8b32-6c793fe25a66.png)

- `sh func1.sh` : 사용자 정의 함수 myFunction 실행

![image](https://user-images.githubusercontent.com/77392444/113670125-ab497400-96ef-11eb-967f-537b7b684978.png)

- `vim func2.sh` : 파라미터를 사용한 함수

![image](https://user-images.githubusercontent.com/77392444/113670504-2dd23380-96f0-11eb-983a-51d49c3f93d8.png)


- `sh func2.sh` : 파라미터를 붙여서 함수 호출 실행

![image](https://user-images.githubusercontent.com/77392444/113670553-3dea1300-96f0-11eb-9c36-0769e5025021.png)
