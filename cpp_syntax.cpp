/*
 * Syntax tests for highlighting
 */
using namespace
return
if else do while

class start (int arg) {
    public:
        int value = 0;
        start();
        int Function();
};

start.value

start::start()
{
}

int start::Function(void)
{
    return 12;
}


&address

*pointer
*(pointer)


/*
 * Set of tests. Should all be correctly highlighted with
 * let g:cpp_experimental_template_highlight = 1
 */

AClass::b AClass::getThing(Fred f);
AClass::b AClass::getThing(Fred<T> f);
AClass::b AClass::getThing<T>(Fred f);
AClass::b AClass::getThing<T>(Fred<T> f);
AClass::b AClass::getThing<T::C>(Fred<T> f);
AClass::b AClass::getThing<T<t>>(Fred<T> f);
AClass::b AClass::getThing<T<t>::List>(Fred<T> f);

AClass::b AClass<T>::getThing(Fred f);
AClass::b AClass<T>::getThing(Fred<T> f);
AClass::b AClass<T>::getThing<T>(Fred f);
AClass::b AClass<T>::getThing<T>(Fred<T> f);
AClass::b AClass<T>::getThing<T::C>(Fred<T> f);
AClass::b AClass<T>::getThing<T<t>>(Fred<T> f);
AClass::b AClass<T>::getThing<T<t>::List>(Fred<T> f);

AClass<T>::b AClass::getThing(Fred f);
AClass<T>::b AClass::getThing(Fred<T> f);
AClass<T>::b AClass::getThing<T>(Fred f);
AClass<T>::b AClass::getThing<T>(Fred<T> f);
AClass<T>::b AClass::getThing<T::C>(Fred<T> f);
AClass<T>::b AClass::getThing<T<t>>(Fred<T> f);
AClass<T>::b AClass::getThing<T<t>::List>(Fred<T> f);
AClass<T>::b AClass::getThing<T<B<T>::List>::List>(Fred<T> f);

AClass<T>::b AClass<T>::getThing(Fred f);
AClass<T>::b AClass<T>::getThing(Fred<T> f);
AClass<T>::b AClass<T>::getThing<T>(Fred f);
AClass<T>::b AClass<T>::getThing<T>(Fred<T> f);
AClass<T>::b AClass<T>::getThing<T::C>(Fred<T> f);
AClass<T>::b AClass<T>::getThing<T<t>>(Fred<T> f);
AClass<T>::b AClass<T>::getThing<T<t>::List>(Fred<T> f);
AClass<T>::b AClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);

AClass::b getThing(Fred f);
AClass::b getThing(Fred<T> f);
AClass::b getThing<T>(Fred f);
AClass::b getThing<T>(Fred<T> f);
AClass::b getThing<T::C>(Fred<T> f);
AClass::b getThing<T<t>>(Fred<T> f);
AClass::b getThing<T<t>::List>(Fred<T> f);
AClass::b getThing<T<B<T>::List>::List>(Fred<T> f);

AClass<T>::b getThing(Fred f);
AClass<T>::b getThing(Fred<T> f);
AClass<T>::b getThing<T>(Fred f);
AClass<T>::b getThing<T>(Fred<T> f);
AClass<T>::b getThing<T::C>(Fred<T> f);
AClass<T>::b getThing<T<t>>(Fred<T> f);
AClass<T>::b getThing<T<t>::List>(Fred<T> f);
AClass<T>::b getThing<T<B<T>::List>::List>(Fred<T> f);

getThing<T>(Fred f);
getThing<T>(Fred<T> f);
getThing<T>(Fred<T>::List f);

AClass<T>(Fred f);
AClass<T>(Fred<T> f);
AClass<T>(Fred<T>::List f);

AClass::AClass::getThing(Fred<T> f);
AClass::badClass::getThing(Fred<T> f);
badClass::badClass::getThing(Fred<T> f);

AClass::AClass::getThing<T<B<T>::List>::List>(Fred<T> f);
AClass::badClass::getThing<T<B<T>::List>::List>(Fred<T> f);
badClass::badClass::getThing<T<B<T>::List>::List>(Fred<T> f);

AClass::AClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);
AClass::badClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);
badClass::badClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);

AClass<T>::AClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);
AClass<T>::badClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);
badClass<T>::badClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);

template <class T, class B>
class BaseCalss : public AClass<T>
{
};
template <class T, class B<E>>
class BaseCalss : public AClass<T>
{
};

Aclass<T> aClass = bClass->getThing();

for(int i=0; i<12; i++ )
{
}

template<T>
bool operator<double><( int a , int b)
{
    return b > a;
}

bool operator<( int a , int b)
{
    return b > a;
}
bool operator<=( int a , int b);

bool tmp = a < b && b > c;
if ( tmp )
{
    std::cout<<a<<"<"<<b<<"&&"<b<<">"<<c;
}


/*
 * Set of tests. Should all be correctly highlighted with
 * let g:cpp_experimental_simple_template_highlight = 1
 *
 * Note: the template functions break with
 * let g:cpp_experimental_template_highlight = 1
 */

class Class {
    Class(int val): value(val) {
    };
};

bool operator<(const ConnectionString& other) const {
    return this->_string < other._string;
}

class Class {
public:
    template <typename T>
    Class(T val, typename std::enable_if<std::is_floating_point<T>::value, T>::type* = 0)
            : variable1(0.0f), variable2(std::make_shared<T>(val)) {}

private:
    Function(double variable);
}

void Class::Function(double variable) {
    std::vector<uint64_t> testing;
}

void func<std::map<std::string, std::string<double>>>() {
    std::cout << "output" << std::endl;
}

uint32_t b = static_cast<uint8_t>(a);
char j = reinterpret_cast<char>(k);
