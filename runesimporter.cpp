#include "runesimporter.h"

#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkReply>
#include <QtNetwork/QNetworkRequest>
#include <QSslCertificate>
#include <QSslSocket>
#include <QProcess>
#include <QDebug>
#include <QRegularExpression>

#include "console.h"



RunesImporter::RunesImporter(QObject *parent)
    : QObject{parent}
{

}


void RunesImporter::greet(QString message)
{
    qDebug()<< "qDebug z poziomu metody cpp klasy RunesImporter";

    QProcess process;
    QStringList arguments = { "PROCESS", "WHERE", "name='LeagueClientUx.exe'", "GET", "commandline"};
    process.start("wmic",arguments);
    process.waitForFinished(-1); // will wait forever until finished

    QString output(process.readAllStandardOutput());

    QRegularExpression regex("--app-port=([0-9]+)");
    qDebug() << regex.match(output).captured(1);

    //console.log("twojastara")

    QString port = regex.match(output).captured(1);

    regex = QRegularExpression("--remoting-auth-token=(.*?)\"");
    qDebug() << regex.match(output).captured(1);

    QString password = regex.match(output).captured(1);

    return;
}


/*
    QProcess process;
    QStringList arguments = { "PROCESS", "WHERE", "name='LeagueClientUx.exe'", "GET", "commandline"};
    process.start("wmic",arguments);
    process.waitForFinished(-1); // will wait forever until finished

    QString output(process.readAllStandardOutput());

    QRegularExpression regex("--app-port=([0-9]+)");
    qDebug() << regex.match(output).captured(1);

    QString port = regex.match(output).captured(1);

    regex = QRegularExpression("--remoting-auth-token=(.*?)\"");
    qDebug() << regex.match(output).captured(1);

    QString password = regex.match(output).captured(1);
*/

/*

    mManager = new QNetworkAccessManager(this);
    connect(mManager, &QNetworkAccessManager::finished, this, [&](QNetworkReply *reply)
            {
                QByteArray data = reply->readAll();
                QString dataString = QString(data);
                publicdataString = dataString;

                if(reply->url().toString().contains("currentpage"))
                {
                    QString id = QRegularExpression("\"id\":(.*?),").match(dataString).captured(1);
                    QNetworkRequest request_xd = QNetworkRequest(QUrl(http + "pages/" + id));
                    QSslConfiguration conf = request_xd.sslConfiguration();
                    conf.setPeerVerifyMode(QSslSocket::VerifyNone);
                    request_xd.setSslConfiguration(conf);
                    request_xd.setRawHeader("Authorization", QString("Basic "+authkey).toLocal8Bit());

                    // siema siema tu se popodmnieniaj wartosci w stringu tym wyzej :3

                    QDateTime asd(QDateTime::currentDateTime());
                    uint unixTime = asd.toMSecsSinceEpoch();
                    unixTime%=10000;
                    qDebug()<< unixTime;
                    QString yolo = "[LP2] Runes #" + QString::number(unixTime);
                    qDebug()<<yolo;
                    //name
                    dataString.replace(QRegularExpression("\"name\":\"(.*?)\"").match(dataString).captured(1), yolo);

                    //primaryStyle
                    dataString.replace("\"primaryStyleId\":" + QRegularExpression("\"primaryStyleId\":([0-9]+)").match(dataString).captured(1), "\"primaryStyleId\":" + QString::number(rune_ID));

                    //subStyle
                    dataString.replace("\"subStyleId\":" + QRegularExpression("\"subStyleId\":([0-9]+)").match(dataString).captured(1), "\"subStyleId\":" + QString::number(secondary_rune_ID));

                    //perksIds
                    QString runes;
                    for(int i = 0; i < 9; i++){
                        runes += QString::number(id_of_runes[i]);
                        if(i != 8) runes += ",";
                    }
                    dataString.replace(QRegularExpression("([0-9,]{44})").match(dataString).captured(1), runes);
                    qDebug() << runes;
                    mManager->put(request_xd, dataString.toUtf8());


                }});

*/
