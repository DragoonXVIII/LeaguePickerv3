#ifndef RUNESIMPORTER_H
#define RUNESIMPORTER_H


#include <QObject>


class RunesImporter: public QObject
{
    Q_OBJECT
    public:
        explicit RunesImporter(QObject *parent = nullptr);


    public slots:
        void greet(QString message);

};

#endif // RUNESIMPORTER_H
