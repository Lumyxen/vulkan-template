#include <iostream>
#include <string>
#include <vector>
#include <memory>

int main() {
    std::cout << "Vulkan Template Project" << std::endl;
    std::cout << "C++23 Standard" << std::endl;
    
    // Test C++23 features
    std::vector<int> numbers = {1, 2, 3, 4, 5};
    
    std::cout << "Numbers: ";
    for (const auto& n : numbers) {
        std::cout << n << " ";
    }
    std::cout << std::endl;
    
    return 0;
}
