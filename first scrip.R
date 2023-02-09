a<-seq(1:10)
print(a)
#print는 다음 행으로 개행한다
#cat은 개행 하지 않는다.
cat("안녕하세요","!")
print("안녕하세요")
cat(1,2,3,4,5,"\n")
cat("Hello R!","\n")

#"<-"는 지역 변수 "<<-"는 전역 변수(global)
a<-seq(1:10)
b<-seq(1:20)
#문자 구간과 간격/ lengh.out은 문자 구간중 몇개를 가질 것인지
seq1<-(9:-2)
seq2<-seq(from=0,to=20,by=2)
seq3<-seq(from=0,to=20,length.out=5)

#반복 대상과 횟수
rep(1,time=5)
rep(1:4,each=2)
# paste는백터의 원소를 하나로 합쳐준다. 문자열 타밉
# sep은 원소를 연결할떄 사이에 넣을 문자
# collap는 원소들을 합칠때 원소 사이에 무엇으로 분리할지지
a=c(1,2,3,4,5)
paste(a,"hi")
paste(a,"hi",sep="**")
b=c(1,2,3,4,5)
paste0(b,"hi",collapse = ",")
b


#substr은 문자열의 특정부분을 추출가능
substr("Bigdata",1,4)


# "ls()"는 현재 변수의 목록을 출력, "ls.str()"은 변수 목록의 세분화 문자열(str)
ls()
ls.str()
typeof(ls.str())

# "c"는 백터 생성 (숫자,문자,논리)==문자열로 생성 / (숫자,논리)==논리를 숫자로
c<-c(10,"hi",T)
typeof(c)
d<-c(10,T)

# 백터의 연산
# 연산자 우선순위 [],$,^,-+(-3),:,%any%,* /,+-,==,!,&,|,~,->,=,<-,?
x<-c(1:10)
x[1]

# "$"는 if 데이터 리스트 항목중 추출 datalist$age

# %%연산자(%%,%/%,%*%,%in%)
#나머지 연산자
x<-c(1:10)
y<-c(5)
x%%y
x%/%y 
#정수 나누기 연산자 정수 몫
#0만 FALSE !은 0만 TRUE
a=c(0,0,2,3)
b=c(0,1,1,4)
a&&b
a|b 
!a
c=a||b
c
# &은 백터끼리 비교 &&은 논리형 끼리 비교

#|은 백터의 원소를 비교 ||은 백터의 첫번째 결과만 

# 함수
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

# 내장함수
z<-c(1:10)
k<-c(5:14)
mean(z)
sum(z)
median(z) #중앙값
log(z)
var(z) #분산
cov(z,k) #공분산 두 변수의 길이가 같아야 한다.
cor(z,k) #상관계수
length(z)


# 출력할 자릿수 정의
# digits는 소수점 자리 표시
print(pi,digits = 4)
cat(format(pi,digits=4),'\n')
#options는 나왔던 수들의 몇번쨰 자리에서 반올림(여러 자룔를 한번에 할떄 좋을 듯)
i<-c(3.23423,23432.342)
options(digits = 2)
i

#파일에 출력하기
sink("파일 이름")
~~~~~
sink()#파일 저장

v1=c(1,3,2,4)
v2=c(3,4,3,5)
v3=v1+v2
v4=v1*v2
cat("vector v1=(",v1,")","\n",file="파일이름")
cat("vector v1=(",v2,")","\n",file="파일이름",append=T)

#파일 목록보기
list.files()
list.files(recursive=T,all.files=T) #recursive 포더안의 모든 팡리 검색 TRUE

#고정자리수 데이터 파일 읽기
read.fwf("file_path"width=c(간격),col.names(변수명 설정))


#테이블 파일 읽기
read.table("file_name",sep = "구분자")


b<-1:12
dim(b)<-c(2,2,3)
b

v<-c(2,3,4)
v<-c(v,1223,231)
v

v[length(v)+2]<-23,23
v

k<-c(1,2,3,4)
append(k,NA,after=3)

f<-factor(v,c(324,3241,1321,2321,23))
f

var1<-factor('a',c('a','b',"c"))
var1

a<-seq(from=1,to=12,by=2)
a
a[c(1,3,5)]
a[-c(2,4)]

x<-c(23,434)
y<-c(234,234,654)
z<-c(234,567,85)
L<-list(x,y,z)
L
K<-list(first=234,second="한국",third=T);K

L[[1]]
L[c(1,2)]
names(L)<-c("First","Second","Third")
L[["First"]]
L$Second

L[["Third"]]<-NULL
L

L[sapply(L,is.null)]<-NULL
L

D<-matrix(1:10,2,5)

dim(D)
diag(c(1,2,3,4))

D<-matrix(1:10,2,5)
D
t(D)

m=matrix(1:4,2)
m
msolve<-solve(m)
msolve
m_diag<-m%*%(msolve)
m_diag

a=matrix(1:4,2)
b=matrix(2:5,2)
a
b
a_b=a+b
a_b
a%*%a
m=matrix(1:4,2)
m
a<-m[1,]
a
a<-m[,2]

