#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QIcon>


#include "runesimporter.h"
//#include "console.h"



int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    //console.log("SSL");

    RunesImporter *importer = new RunesImporter;

    QGuiApplication app(argc, argv);  

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("runesimporter",importer);

    const QUrl url(QStringLiteral("qrc:/main.qml"));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl)
    {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.load(url);
    app.setWindowIcon(QIcon(":/assets/ui/assets/logov3.png"));

    return app.exec();
}
