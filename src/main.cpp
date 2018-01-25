#include <iostream>
#include "Engine.h"

using namespace std;

int main(int argc, char **argv) {
    unique_ptr<Engine> engine = unique_ptr<Engine>(new Engine);
    engine->initialize();
    engine->createWindow(640, 480, "This is title");
    engine->makeCurrent();
    engine->test();
    engine->destroyWindow();
    
    return 0;
}
