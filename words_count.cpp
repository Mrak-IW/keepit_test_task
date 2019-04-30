#include <iostream>
#include <set>
#include <string>

using namespace std;

// This is a demo program, so it may be a bit excessive

int main(int argc, char **argv)
{
	std::set<std::string> words;

	while (!cin.eof())
	{
		std::string buf;
		cin >> buf;
#ifdef DEBUG
		cout << buf << endl;
#endif
		if (buf.length() > 0)
			words.insert(buf);
	}
	
	cout << "Words count = " << words.size() << endl;

#ifdef DEBUG
	cout << "Unique words was:" << endl;
	for (auto it : words)
	{
		cout << it << endl;
	}
#endif
}