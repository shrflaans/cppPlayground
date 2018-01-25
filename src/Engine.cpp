#include "Engine.h"

Engine::Engine()
: m_window(NULL)
{
    
}

Engine::~Engine() {
    glfwTerminate();
}

bool Engine::initialize() {
    if(!glfwInit()) {
        cout << "Error initializing" << endl;
        return false;
    }
    
    glfwSetErrorCallback(Engine::error_callback);
    
    return true;
}

bool Engine::createWindow(const int width, const int height, const std::string title) {
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    
    m_window = glfwCreateWindow(width, height, title.c_str(), NULL, NULL);
    
    if (!m_window) {
        // Window or OpenGL context creation failed
        return false;
    }
    
    return true;
}

void Engine::destroyWindow() {
    glfwDestroyWindow(m_window);
}

void Engine::makeCurrent() {
    glfwMakeContextCurrent(m_window);
}

void Engine::test() {
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    while (!glfwWindowShouldClose(m_window))
    {
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glfwSwapBuffers(m_window);
        glfwPollEvents();  //Needed, or you will get a spinning beach ball
    }
}

void Engine::error_callback(int error, const char* description) {
    cout << "Error: " << description << endl;
}
