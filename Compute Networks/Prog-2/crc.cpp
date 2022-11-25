#include<bits/stdc++.h>
using namespace std;
  
string xor1(string a, string b)
{
    string result = "";
    int n = b.length();
    for(int i=1;i<n;i++){
        if (a[i] == b[i])
            result += "0";
        else
            result += "1";
    }
    return result;
}
 

string mod2div(string divident, string divisor)
{
    int dl = divisor.length();
    string tmp = divident.substr(0, dl);
    int n = divident.length();
    while (dl < n){
        if (tmp[0] == '1')
            tmp = xor1(divisor, tmp) + divident[dl];
        else
            tmp = xor1(std::string(dl, '0'), tmp) + divident[dl];
            dl += 1;
    }
    if (tmp[0] == '1')
        tmp = xor1(divisor, tmp);
    else
        tmp = xor1(std::string(dl, '0'), tmp);
         
    return tmp;
}
 

void encodeData(string data, string key){
    int keyl = key.length();
    string appended_data = (data + std::string(keyl - 1, '0'));
    string remainder = mod2div(appended_data, key);
    string codeword = data + remainder;
    cout << "Remainder : " << remainder << "\n";
    cout << "Encoded Data (Data + Remainder) :" << codeword << "\n";
}
  

int main(){
    string a,b;
    cout<<"Enter Data : ";
    cin>>a;
    cout<<"Enter key: ";
    cin>>b;
    encodeData(a,b);
    return 0;
}
