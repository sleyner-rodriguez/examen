class Producto {
  String? dateExpiry;
  String? numberLote;

  Producto({
     this.dateExpiry,
     this.numberLote,
  });
}

class ProductoFresco extends Producto {
  String? packingDate;
  String? originCounrty;

  ProductoFresco(
    this.packingDate,
    this.originCounrty, {
     String? dateExpiry,
     String? numberLote,
  }) : super(
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}

class ProductoRefrigerado extends Producto {
  String organismCode;
  String suitableTemperature;

  ProductoRefrigerado(
    this.organismCode,
    this.suitableTemperature, {
     String? dateExpiry,
     String? numberLote,
  }) : super(
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}

class ProductoCongelado extends Producto {
  String? packingDate;
  String? originCounrty;
  String? suitableTemperature;

  ProductoCongelado(
    this.packingDate,
    this.originCounrty,
    this.suitableTemperature, {
     String? dateExpiry,
     String? numberLote,
  }) : super(
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}

class ProductoCongeladoPorAire extends ProductoCongelado {
  String? airComposition;
  String? nitrogenComposition;
  String? carbonDioxideComposition;
  String? waterVaporComposition;

  ProductoCongeladoPorAire(
      String? packingDate,
      String? originCounrty,
      String? suitableTemperature,
      this.airComposition,
      this.nitrogenComposition,
      this.carbonDioxideComposition,
      this.waterVaporComposition,
      { String? dateExpiry,
       String? numberLote})
      : super(
          packingDate,
          originCounrty,
          suitableTemperature,
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}

class ProductoCongeladoPorAgua extends ProductoCongelado {
  String salinity;
  ProductoCongeladoPorAgua(String? packingDate, String? originCounrty,
      String? suitableTemperature, this.salinity,
      {String? dateExpiry, String? numberLote})
      : super(
          packingDate,
          originCounrty,
          suitableTemperature,
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}

class ProductoCongeladoPorNitrogeno extends ProductoCongelado {
  String? nitrogenFreezingMethod;
  String? exhibithionTime;

  ProductoCongeladoPorNitrogeno(String? packingDate, String? originCounrty,
      String suitableTemperature, this.nitrogenFreezingMethod, this.exhibithionTime,
      { String? dateExpiry, String? numberLote})
      : super(
          packingDate,
          originCounrty,
          suitableTemperature,
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}
