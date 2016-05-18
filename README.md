# EIEN363(03) 컴퓨터아키텍처 (2016년 1학기)

수업 외 면담이 필요할 경우 교수 홈페이지 참조
http://kyagrd.github.io/

교과서는 교내 서점에서 구입 
* Computer Organization and Design: the hardware/software interface (5th ed., Asian ed.)<br/>
  Patterson & Hennessy, Elsevier Korea LLC, ISBN 978-89-94961-89-7

학점 평가 방침: 출석/퀴즈 25%, 과제 25%, 중간 25%, 기말 25%

## 과제
1. **Due: 2016-03-29일 화요일 밤** 연속된 메모리에 저장된 정수들의 합을 반복문 형태의 어셈블리 코드로 구현 <br/> (과제를 시작할 템플릿 파일 [hw1.s](https://github.com/kyagrd/eien363ca/blob/master/dirs/mips/hw1.s) )
1. **Due: 2016-04-13일 수요일 밤** binomial coefficient (n개에서 k개를 순서없이 고르는 경우의수) 재귀함수 구현 <br/> (과제를 시작할 템플릿 파일 [hw2.s](https://github.com/kyagrd/eien363ca/blob/master/dirs/mips/hw2.s) )
1. **Due: 2016-05-27일 금요일 밤**[hw3.s](https://github.com/kyagrd/eien363ca/blob/master/dirs/winMIPS64/hw3.s) 주석에 과제 내용이 적혀 있습니다.

## 강의노트
* [2016-03-09 수업계획 및 기본개념](https://slides.com/kyagrd/ca2016spring0309)
* [2016-03-10 Instruction](http://slides.com/kyagrd/ca2016spring0310)
  * [동영상1](https://youtu.be/F5rvsziqRfI),
    [동영상2](https://youtu.be/0lOVPQhpIMM),
    [동영상3](https://youtu.be/m0xsLWYs17Q),
    [동영상4](https://youtu.be/99iXM4wPkJk),
    [동영상5](https://youtu.be/eD22zdX1m-E),
    [동영상6](https://youtu.be/g_xf1Y9ZvOI)
* [2016-03-16 MIPS Instruction](http://slides.com/kyagrd/ca2016spring0316)
* [2016-03-17 MIPS Assembly, Data Transfer instructions](http://slides.com/kyagrd/ca2016spring0317)
* 2016-03-23 과제1 설명 및 [branch/jump 관련 MIPS Assembly](https://slides.com/kyagrd/ca2016spring0323/) (예제 소스코드 [loop.s](https://github.com/kyagrd/eien363ca/blob/master/dirs/mips/loop.s) )
* [2016-03-24 3장의 이진수 사칙연산](https://slides.com/kyagrd/ca2016spring0324)
* [2016-03-30 MIPS 함수 호출과 스택 사용](https://slides.com/kyagrd/ca2016spring0330)
* 2016-03-31 과제 풀이 및 MIPS로 함수 호출 구현 예제들 
  * 직전 수업시간에 다룬 twice 함수 예제 [function.s](https://github.com/kyagrd/eien363ca/blob/master/dirs/mips/function.s)
  * 팩토리알 재귀함수 예제 [factorial.s](https://github.com/kyagrd/eien363ca/blob/master/dirs/mips/factorial.s)
  * 살짝 다르게 정리한 팩토리알 예제 [fact2.s](https://github.com/kyagrd/eien363ca/blob/master/dirs/mips/fact2.s)
* [2016-04-06 부동 소수점 수 개요](http://slides.com/kyagrd/ca2016spring0406)
* [2016-04-07 부동 소수점 수 덧셈, 곱셈](https://slides.com/kyagrd/ca2016spring0407)
* [2016-04-14 Rounding mode 보충, 중간고사 대비 정리](http://slides.com/kyagrd/ca2016spring0414)
* 2016-04-21 중간고사
* 2016-04-27 중간고사 풀이 및 성적 오류 정정, [MIPS 인스터럭션의 Addressing mode 보충](http://slides.com/kyagrd/ca2016spring0427)
* [2016-04-28 MIPS Pipelining](http://slides.com/kyagrd/ca2016spring0428)
* 2016-05-4 파이프라인 실습 도구 [WinMIPS64](http://indigo.ie/~mscott/) 활용
* 2016-05-11 WinMIPS64로 실습했던 data hazard (forwarding으로도 stall이 생기는 메모리 값 의존 관련) 및 control hazard (branch prediction 관련) [소스코드들](https://github.com/kyagrd/eien363ca/tree/master/dirs/winMIPS64)
