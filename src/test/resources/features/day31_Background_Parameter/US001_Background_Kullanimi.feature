Feature: US001_Amazon_Sayfasinda_Urun_Aratma

  #Classlarımızda kullandığımız @Before gibi burda da her scenario'dan önce Background: yapisi çalisir
  Background: Kullanici_Amazon_Sayfasina_Gider
    Given kullanici_amazon_sayfasina_gider

  Scenario: TC01_Amazon_Sayfasinda_Selenium_Aratma
    Then arama_kutusunda_Selenium_aratir

  Scenario: TC02_Amazon_Sayfasinda_Java_Aratma
    When arama_kutusunda_java_aratir

  Scenario: TC03_Amazon_Sayfasinda_Sql_Aratma
    And arama_kutusunda_sql_aratir
    And sayfayi_kapatir

    #Feature file'da birden fazla ürün aratmak için her ürün için yeni bir method oluşturmak gerekir.
  #Dolayısıyla stepdefinition class'ında çok fazla method oluşturmuş oluruz.
  #Tek bir parametreli method oluşturup bunun üstesinden gelebiliriz.
    #Bunun için feature file'da aratmak istediğim metni " " tırnak içinde yazarsak stepdefinition class'ında bize
  #parametreli method oluşturur. Böylece bu methodu kullanarak istediğimiz kadar metin aratabiliriz