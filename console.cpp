#include "console.h"
#include <QDebug>
#include <QString>



console* console::instance = nullptr;
std::mutex console::mutex;

console& console::getInstance()
{
    if (instance == nullptr)
    {
        std::lock_guard<std::mutex> lock(mutex);
        if (instance == nullptr)
        {
            instance = new console();
        }
    }
    return *instance;
}

void console::log(QString communicat)
{
    qDebug() << "\033[1;31m" << communicat << "\033[0m";
}


