FROM openjdk:17-jdk-slim

WORKDIR /app

# تثبيت wget وتحميل Lavalink.jar تلقائيًا
RUN apt-get update && apt-get install -y wget && \
    wget https://ci.lavalink.dev/snapshots/Lavalink.jar

# نسخ ملف الإعدادات
COPY application.yml .

# فتح البورت الافتراضي
EXPOSE 2333

# أمر التشغيل
CMD ["java", "-jar", "Lavalink.jar"]
