## Hospital Management System

Gereksinimler;

-Eclipse ve maven plugin

-Tomcat v9.0

hospitalmanagement.sql projenin içinde mevcuttur.

Database bağlantısı için JNDI kullanıldı.

Tomcat kuruldukdan sonra server projesinin içerisinde ki context.xml içerisine aşağıda ki konfigurasyon yapılmalı;

<Resource name="jdbc/hospitalmanagement" auth="Container" type="javax.sql.DataSource"
		maxTotal="100" maxIdle="30" maxWaitMillis="10000" username="KULLANICI ADINIZ" //
		password="ŞİFRENİZ" driverClassName="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/hospitalmanagement" />
    
NOT:Veritabanı isminiz hospitalmanagement olmalıdır.

### Dummy kullanıcı listesi;
kullanıcı adı:patient@gmail.com  password:123456

kullanıcı adı:doctor@gmail.com  password:123456

kullanıcı adı:accountant@gmail.com  password:123456

kullanıcı adı:administrator  password:123456

### Kullanılan Teknolojiler

-Spring
-Spring-MVC
-Apache Tiles
-Hibernate

### NOT bu proje geliştirilme aşamasındadır.Şuan da kimlik doğrulama işlemleri yapıp kullanıcının yetkisine göre ilgili sayfaya yönlendirme işlemi yapıyor.

### İleri de kullanıcak teknolojiler
-RESTEasy ile RESTful

### İleri de yapılacaklar
-Hasta randevusu için android uygulama
-UI için JSF


