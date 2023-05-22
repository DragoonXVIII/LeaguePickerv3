#ifndef CONSOLE_H
#define CONSOLE_H


#include <QString>
#include <mutex>



class console
{
    public:

        static console& getInstance();

        void log(QString communicat);

    private:

        console(){}
        ~console(){}
        //console(const console&) = delete;
        //console& operator = (const console&) = delete;
        static console* instance;
        static std::mutex mutex;
};



#endif // CONSOLE_H

/*
class console
{
public:
    // Metoda zwracająca instancję singletona
    static console& getInstance()
    {
        static console instance;
        return instance;
    }



private:
    // Prywatny konstruktor uniemożliwiający tworzenie instancji klasy poza nią samą
    console(){}
    // Prywatny destruktor uniemożliwiający usuwanie instancji klasy poza nią samą
    ~console(){}
};
*/
