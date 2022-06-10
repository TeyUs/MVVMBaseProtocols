# MVVMBaseProtocols

Projenin detaylarına ulaşmak için okumanız gereken [makale'ye](https://medium.com/@Teyhan/mvvm-base-protocols-9469970c202e) buradan ulaşabilirsiniz.

Bu Swift paket'i MVVM mimarisini kullanmak için protocollerden ve gerekli bir kaç extension'dan oluşmaktadır.

Nasıl kullanıldığına dair [örnek proje'ye](https://github.com/TeyhanYtu/Sample_CoreData_MVVM) bakabilirsiniz.

## Kullanımı

Her sayfanın elemanları için(Model, View, ViewModel) protocoller oluşturulmalıdır. Ve bu protocoller ilgili BaseProtocol'lerle genişletimelidir(extend). 
Örneğin: DetailPageViewModelProtocol: BaseViewModelProtocol.
Bu protocollerin içine her ilgili sayfa için istenilen şartlar eklenir. 

### Ek kullanım:
BaseProtocol'den sonra where ifadesinin ardından varsa diğer elemanların tipleri verilmelidir. 
  Bunlar: ViewModel için : ViewType ve ModelType
          View için : ViewModelType
 örnek satır:
protocol DetailPageViewModelProtocol: BaseViewModelProtocol where ViewType: DetailPageViewControllerProtocol, ModelType: DetailPageModelProtocol

Protocoller hazırlandıktan sonra ilgili protocoller, class ya da struct'a genişlettirilerek kullanılır.
