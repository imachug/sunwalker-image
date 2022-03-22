identify:
	echo "$(g++ --version | head -1 | sed "s/ (GCC)//"), C++11"

%: %.cpp
	g++ "$<" -o "$@" -std=c++11

run: %
	"$<"
