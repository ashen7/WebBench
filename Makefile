# $^  代表所有依赖文件
# $@  代表所有目标文件
# $<  代表第一个依赖文件
# %   代表通配符

TARGET   := web_bench
SOURCES  := web_bench.cpp 
CXX 	 := g++
CXXFLAGS := -std=gnu++11 -Wfatal-errors -Wno-unused-parameter
INC_DIR  := -I ./
LIB_DIR  := -L ./
DEBUG 	 := 0

ifeq ($(DEBUG), 1)
    CXXFLAGS += -g -DDEBUG
else
	CXXFLAGS += -O3 -DNDEBUG
endif

web_server: 
	$(CXX) -o $(TARGET) $(SOURCES) $^ $(CXXFLAGS) $(INC_DIR) $(LIB_DIR) 

clean:
	rm -f $(TARGET)
