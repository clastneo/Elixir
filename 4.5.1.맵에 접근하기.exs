# 키를 사용해 맵에서 값을 가져올 수 있다. 모든 맵에 대해 대괄호 문법을 사용할 수 있다.
states = %{"AL" => "Alabama", "WI" => "Wisconsin"}
states["AL"]
# "Alabama

states["TX"]
# nil

# JS에서 프로퍼티명이 복잡해서 string 형태로 써야 하는 경우와 비슷한듯.
# const test = {"asdf-ggg": "asdf-ggg"}
# console.log(test["asdf-ggg"])
# "asdf-ggg"

# 키가 아톰인 경우엔 온점 표기를 사용할 수도 있다.
colors = %{red: 0xFF0000, green: 0x00FF00, blue: 0x0000FF}
# ${blue: 255, green: 65280, red: 16711680}
colors[:red]
# 16711680
colors.red
# 16711680
