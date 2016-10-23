#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<QQuickView>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
//    QQuickView view;
//    view.setSource(QUrl(QStringLiteral("qrc:/main.qml")));
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
