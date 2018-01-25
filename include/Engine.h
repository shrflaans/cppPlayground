#ifndef ENGINE_H_
#define ENGINE_H_

#include <string>
#include <iostream>

#include <GLFW/glfw3.h>
#include <GLUT/glut.h>

using namespace std;

class Engine {

public:
    Engine();
    ~Engine();
    
    bool initialize();
    bool createWindow(const int width, const int height, const std::string title);
    void destroyWindow();
    
    void makeCurrent();
    
    void test();
    
private:
    static void error_callback(int error, const char* description);
    
private:
    GLFWwindow* m_window;
    
};

#endif  // ENGINE_H_
