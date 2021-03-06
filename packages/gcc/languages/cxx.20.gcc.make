identify:
	echo "$(g++ --version | head -1 | sed "s/ (GCC)//"), C++20"

%: %.cpp
	g++ "$<" -o "$@" -std=c++20 -O2 -I/usr/local/include/c++20

run: %
	"$<"
