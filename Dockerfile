# استخدم صورة Java
FROM openjdk:17-jdk-slim

# إنشاء مجلد داخل الكونتينر
WORKDIR /app

# نسخ الملفات
COPY Lavalink.jar .
COPY application.yml .

# فتح البورت الافتراضي لللافالينك
EXPOSE 2333

# أمر التشغيل
CMD ["java", "-jar", "Lavalink.jar"]
