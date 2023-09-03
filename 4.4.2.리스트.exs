# 엘릭서의 리스트는 링크드 리스트다.
# 리스트는 비어 있거나, 머리와 꼬리로 나뉜다. 머리 부분은 하나의 값을 담으며, 꼬리 부분은 그 자체로 다시 리스트다.

# 리스트 연결
[1, 2, 3] ++ [4, 5, 6]
# [1, 2, 3, 4, 5, 6]

# 리스트의 차이 구하기(여집합)
[1, 2, 3, 4] -- [2, 4]
# [1, 3]

# 포함 여부 검사
1 in [1, 2, 3, 4]
# true
"wombat" in [1, 2, 3, 4]
# false

# 키워드 리스트
# 때로 키-값 쌍으로 이뤄진 리스트가 필요하다. 아래처럼 기술하자.
[name: "Dave", city: "Dallas", likes: "Programming"]

# 엘릭서는 위 내용을 2-튜플들의 리스트로 바꾼다.
# 키워드 리스트는 {:atom, value} 형식의 튜플로 이뤄진 리스트다. 키에 해당하는 튜플의 첫번째 값은 항상 아톰이어야 한다.
[{:name, "Dave"}, {:city, "Dallas"}, {:likes, "Programming"}]

# 함수를 호출할 때 키워드 리스트가 마지막 인자면 대괄호를 생략할 수 있다.
DB.save(record, [{:use_transaction, true}, {:logging, "HIGH"}])

# 위 코드는 아래와 같이 수정할 수 있다.
DB.save(record, use_transaction: true, logging: "HIGH")

# 여러 값을 넣을 수 있는 '모든 상황에서' 마지막 값이 키워드 리스트인 경우 대괄호를 생략할 수 있다.
[1, fred: 1, dave: 2]
[1, {:fred, 1}, {:dave, 2}]

{1, fred: 1, dave: 2}
{1, [fred:1, dave:2]}
