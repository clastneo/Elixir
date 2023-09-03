# 튜플은 여러 값을 "순서 있게" 모은 것이다.
# 한번 생성된 튜플은 수정할 수 없다.
# { 1, 2 }
# { :ok, 42, "next" }

# 일반적인 튜플은 2개에서 4개 정도의 값을 포함한다.
# 값이 2개인 튜플은 2-튜플, 값이 3개인 튜플은 3-튜플 형태로 줄여부르기도 한다.
# 더 많은 값을 저장하려면 튜플보다는 맵이나 구조체가 더 적절하다.
# 패턴 매칭에서도 튜플을 사용할 수 있다.

{status, count, action} = {:ok, 42, "next"}

# 엘릭서에서는 일반적으로 함수 실행에 설공했을 때, 첫 번째 값이 :ok인 튜플을 반환한다.

{:ok, file} = File.open("mix.exs")
# {:ok, #PID<0.39.0>}
# 파일을 성공적으로 열었으므로, 반환되는 튜플에는 :ok 상태와 파일에 접근하기 위한 PID가 담긴다.
# 이런 동작을 이용해 함수가 성공할 것을 가정하고 패턴 매칭을 만들기도 한다.

{:ok, file} = File.open("non-existent-file")
# (MatchError) no match of right hand side value: {:error, :enoent}
# :enoent는 '파일이 존재하지 않습니다 error no entry'의 유닉스식 표현이다.
