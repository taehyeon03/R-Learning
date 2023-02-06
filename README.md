# R-Learning
First Start Date #2023.02.05


adsp license learning~


### __R의 데이터 유형__


#### -숫자(Number) 
- integer(정수),double(실수)


#### -논리값(Logical)
- TRUE(T),FALSE(F)


#### -문자(Character)
- "a","abc"

<br>

### __R의 기초__

 
#### 출력하기 
- print(): 하나의 객체만 출력

    ex) print("Hello R!")  <br/> output: Hello R! <br/>
    >



- cat(): 개행하지 않고 묶어서 출력/개행("\n") 

    ex) cat("Hello R!","\n") <br/> output: Hello R! <br/>
    > <br>
<br>


#### 변수 할당
- <- (지역변수), <<- (전역변수), =, -> <br/>
<br>


#### 변수 목록보기
- ls(): 현재 변수의 목록을 출력
- ls.str(): 변수 목록의 세분화(문자열)


**&#35; typeof: type확인**<br>
<br/>



#### 벡터 변수 생성
- c(): 백터의 원소 생성<br/>
    ex)a=c(1,2,3,4,5)<br/>
    output: [1] 1 2 3 4 5 <br>
<br>

#### 수열&반복
  - 수열: (:), seq() <br/>
  ``` R
    #lengh.out은 문자 구간중 몇개를 가질 것인지
    seq1<-(9:-2)
    > [1]  9  8  7  6  5  4  3  2  1  0 -1 -2
    seq2<-seq(from=0,to=20,by=2)
    > [1]  0  2  4  6  8 10 12 14 16 18 20
    seq3<-seq(from=0,to=20,length.out=5)
    > [1]  0  5 10 15 20
  ```

- 반복: rep()<br/>
  ``` R
  rep(1,time=5)
  > [1] 1 1 1 1 1
  rep(1:4,each=2)
  > [1] 1 1 2 2 3 3 4 4
  ```
<br>


#### 문자 붙이기 
- paste(): sep, collapse <br/>
  ``` R
  # paste는백터의 원소를 하나로 합쳐준다. 문자열 타밉
  # sep은 원소를 연결할떄 사이에 넣을 문자
  # collap는 원소들을 합칠때 원소 사이에 무엇으로 분리 할 것인지
  a=c(1,2,3,4,5)
  paste(a,"hi")
  > [1] "1 hi" "2 hi" "3 hi" "4 hi" "5 hi"
  paste(a,"hi",sep="**")
  > [1] "1**hi" "2**hi" "3**hi" "4**hi" "5**hi"
  b=c(1,2,3,4,5)
  paste0(b,"hi",collapse = ",")
  > [1] "1hi,2hi,3hi,4hi,5hi"
  ```

#### 문자열 추출
* substr("Bigdata",1,4)
  ``` R
  #substr은 문자열의 특정부분을 추출가능
  substr("Bigdata",1,4)
  ```
<br>

#### 함수 정의 
- function(매개변수1, 매개변수2)

  ``` R
  func1=function(x1,x2){
    y<-x1+x2
    return(y)
  }
  func1(2,3)
  
  func2<-function(x1,x2=3)
  {
    y<-(x1**x2)
    return(y)
  }
  func2(2)
  ```
  <br>
  
  
- 자주쓰는 내장함수
  ```
  mean(z) #평균
  sum(z) #합계
  median(z) #중앙값
  log(z) #로그함수
  var(z) #분산
  cov(z,k) #공분산 두 변수의 길이가 같아야 한다.
  cor(z,k) #상관계수
  length(z) #변수 길이
  ```
  <br>
  
  
  #### __연산자 우선순위__
  [], $, ^, -+(음/양), :, %any%, */, +-, ==, !, &, |, ~, ->, =, <-, ?
  
  - 	&#36;: 데이터 목록 중 추출 
      datalist	&#36;age(datalist에서 age항목 추출)<br>
  - %%연산자(%%,%/%,%*%,%in%)
    - (1)나머지 연산자 %%
    ``` R
    x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    y <- c(5)
    x %% y
    > [1] 1 2 3 4 0 1 2 3 4 0
    ```
    - (2)정수 나누기 연산자 %/%
    ``` R
    x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    y <- c(5)
    x %/% y
    > [1] 0 0 0 0 1 1 1 1 1 2
    ```
    - (3)행렬 곱하기 연산자 %*%
    ``` R
    x %*% y
    c(1, 2, 3) %*% c(4, 5, 6)
    > [1]32
    ```
  - (4)벡터 내 특정 값 포함 여부 확인 연산자 %in%
    ``` R
    x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    y <- c(5)
    x %in% y
    > [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE
    # x 내에 y 값이 포함된 개수의 합
    sum( x %in% y)
    > [1] 1
    ```
<br>
- "|" & "&" 연산자
  ``` R
  # |은 백터의 원소를 비교 ||은 백터의 첫번째 결과만 
  a=c(0,0,2,3)
  b=c(0,1,1,4)
  a|b
  > [1] FALSE  TRUE  TRUE  TRUE (0만 FALSE !은 0만 TRUE)
  
  !a
  > [1] TRUE  TRUE FALSE FALSE
  
  a||b
  > [1] FALSE (0이기 때문에) 
  
  a=c(0,0,2,3)
  b=c(0,1,1,4)
  a&b
  > [1] FALSE FALSE  TRUE  TRUE (0이 아닌 모든 숫자는 T)
  
  a&&b
  TRUE & TRUE
  >[1] TRUE
  
  TRUE & FALSE
  >[1] FALSE
  
  FALSE & TRUE
  >[1] FALSE
  
  FALSE & FALSE
  >[1] FALSE
  ```
