# ["Humperdinck", "Buttercup", "Fezzik"]
# ["milk", "butter", ["iocane", 12]]

# 패턴매칭 예제

# 패턴매칭 단순 예제
list = [1, 2, 3]
[a, b, c] = list

# 매칭되는 데이터는 리터럴만이 아님
list = [1, 2, [3, 4, 5]]
[a, b, c] = list
# c의 출력이 안되는데 이유는 알 수가 없다.

# 변수의 패턴매칭
list = [1, 2, 3]
[a, 2, c] = list
# 성공하는 변수 패턴매칭
# [g, 2, h] = [1, 2, 3] 에서 왼쪽과 오른쪽을 '같게 만드는 값' 을 할당하는 형태임.

# 실패하는 패턴매칭
# [*, 2, *]과 [*, 1, z]를 '같게 만드는 값' 은 존재할 수 없다.
list = [1, 2, 3]
[x, 1, z] = list
# (MatchError) 패턴이 우변의 값 [1, 2, 3] 과 매치되지 않습니다.
