CXXFLAGS := g++ -Wall -std=c++11
SDL_FLAGS := `sdl2-config --cflags --libs`
CODE_NAME := key_pressed

all: $(CODE_NAME)

$(CODE_NAME):
	$(CXXFLAGS) $@.cpp -o $@ $(SDL_FLAGS)

clean:
	rm $(CODE_NAME)
