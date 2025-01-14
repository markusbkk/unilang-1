#include "code/utilities/types/vectors/transformers/lib.hpp"
#include "code/utilities/types/strings/observers/char/lib.hpp"
#include <iostream>
#include "boost/range/adaptor/reversed.hpp"
#include "code/utilities/types/strings/transformers/removing/lib.hpp"
#include "code/utilities/types/strings/transformers/squeeze/lib.hpp"
#include "code/utilities/types/strings/transformers/other/lib.hpp"
#include "code/utilities/types/strings/transformers/trimming/lib.hpp"
#include "code/utilities/types/strings/observers/converting/lib.hpp"
#include "code/utilities/types/strings/observers/other/lib.hpp"




 void rotateLeft(std::vector<int> & vec){
     int first = vec[0];
     for (size_t i =1; i < vec.size(); ++i){
         vec[i-1] = vec[i];
     }
     vec[vec.size()-1] = first;
 }

std::vector<int> rotateLeft(std::vector<int> vec, int numberOfTimes) {
    std::vector<int> result = vec;
    for (size_t i = 0; i < numberOfTimes; ++i){
        rotateLeft(result);
    }
    return result;
}

std::vector<int> rotateLeftModVersion(std::vector<int> vec, int numberOfTimes){

    std::vector<int> result = vec;
    for(int i = 0; i < vec.size(); i++){
        int newLocation = (i + (vec.size() - numberOfTimes)) % vec.size();
        result[newLocation] = vec[i];
    }

    return result;
}

std::vector<std::vector<int>> get_hour_glass_patterns(std::vector<std::vector<int>> const& grid){
    std::vector<std::vector<int>> results;
    auto height = grid.size();
    auto width = grid[0].size();
    
    for (size_t i = 0; i < height-2; ++i){
        for (size_t j = 0; j < width-2; ++j){
            std::vector<int> hourglass;
            hourglass.emplace_back(grid[i][j]);
            hourglass.emplace_back(grid[i][j+1]);
            hourglass.emplace_back(grid[i][j+2]);
            hourglass.emplace_back(grid[i+1][j+1]);
            hourglass.emplace_back(grid[i+2][j]);
            hourglass.emplace_back(grid[i+2][j+1]);
            hourglass.emplace_back(grid[i+2][j+2]);
            results.emplace_back(hourglass);
        }
    }
    
    return results;
}

int maximumhourglassSum(std::vector<std::vector<int>> arr) {
    
    int max_sum = INT_MIN;
    for (auto glass: get_hour_glass_patterns(arr)){
        max_sum = std::max(max_sum,Accumulate(glass));
    }
    
    return max_sum;
}




//math (string is treated as integer)
void Add_Each_Line_By(std::vector<std::string> & v, int num){
    for (auto & it: v){
        it = std::to_string(as_signed(it) + num);
    }
}
void Subtract_Each_Line_By(std::vector<std::string> & v, int num){
    for (auto & it: v){
        it = std::to_string(as_signed(it) - num);
    }
}
void Multiply_Each_Line_By(std::vector<std::string> & v, int num){
    for (auto & it: v){
        it = std::to_string(as_signed(it) * num);
    }
}
void Divide_Each_Line_By(std::vector<std::string> & v, int num){
    for (auto & it: v){
        it = std::to_string(as_signed(it) / num);
    }
}
int Accumulate(std::vector<int> const& v){
    int total = 0;
    for (auto const& it: v){
        total += it;
    }
    return total;
}
int Accumulate(std::vector<std::string> const& v){
    int total = 0;
    for (auto const& it: v){
        total += as_signed(it);
    }
    return total;
}
int Multiply(std::vector<int> const& v){
    int total = 1;
    for (auto const& it: v){
        total *= it;
    }
    return total;
}



void Add(std::vector<std::string> & vec, std::string const& item){
    vec.emplace_back(item);
}
std::vector<std::string>& Remove_First_Elements_That_Are_Whitespace_Elements(std::vector<std::string>& vec){
    size_t count = 0;
    for (auto const& it: vec){
        if (!Is_Only_Whitespace_Characters(it)){
            break;
        }
        ++count;
    }
        Remove_First_N_Elements(vec,count);
    
    return vec;
}
std::vector<std::string>& Remove_Last_Elements_That_Are_Whitespace_Elements(std::vector<std::string>& vec){
    size_t count = 0;
    for (auto const& it: boost::adaptors::reverse(vec)){
        if (!Is_Only_Whitespace_Characters(it)){
            break;
        }
        ++count;
    }
        Remove_Last_N_Elements(vec,count);
    
    return vec;
}

std::vector<std::string>& Remove_Last_Whitespace_Elements_And_Ensure_Only_One_Last_Empty_Element(std::vector<std::string>& vec){
    Remove_Last_Elements_That_Are_Whitespace_Elements(vec);
    vec.push_back("");
    return vec;
}

std::vector<std::string>& Remove_Elements_That_Match_String(std::vector<std::string>& vec, std::string const& match){
    Remove_Elements_Where_Function_Is_True(vec,[&](std::string str)->bool{
        if (str == match){
            return true;
        }
        return false;
        });
    return vec;
}
std::vector<std::string>& Remove_All_Empty_String_Elements(std::vector<std::string>& vec){
    Remove_Elements_That_Match_String(vec, "");
    return vec;
}
std::vector<std::string>& Move_First_Word_Of_String_To_The_End_For_Each_Element(std::vector<std::string>& vec){
    for (auto & it: vec){
        Move_First_Word_Of_String_To_The_End(it);
    }
    return vec;
}
std::vector<std::string>& Squeeze_Away_Spaces_For_Each_Element(std::vector<std::string>& vec){
    for (auto & it: vec){
        Squeeze_Away_Spaces(it);
    }
    return vec;
}

std::vector<std::string>& Remove_Whitespace_Lines(std::vector<std::string>& v){
    v.erase( std::remove_if(std::begin(v), std::end(v), [&](std::string const& line){
        return Contains_Only_Whitespace_Characters(line);
    }), std::end(v) );
    return v;
}
std::vector<std::string>& Trim_Lines(std::vector<std::string>& v){
    for (auto & it: v){
        trim(it);
    }
    return v;
}

std::vector<std::string>& Squeeze_Whitespace_Elements(std::vector<std::string>& vec){
    
    bool found = false;
    std::vector<std::string> result;
    
    for (auto const& it: vec){
        if (Contains_Only_Whitespace_Characters(it)){
            if (!found){
                result.push_back(it);
                found = true;
            }
        }
        else{
            result.push_back(it);
            found = false;
        }
    }
    
    //set from the copy
    vec = result;
    return vec;
}

void Alphabetize_And_Print(std::vector<std::string> results){
    std::sort(results.begin(),results.end());
    for (auto const& it: results){std::cout << it << '\n';}
}
