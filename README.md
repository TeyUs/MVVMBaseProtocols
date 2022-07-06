# MVVMBaseProtocols

It is aimed to produce an SDK that will enable easy use of MVVM architecture.


Medium articles for more details:
* Click the [English version](https://medium.com/@Teyhan/all-about-mvvm-base-protocols-a11e8d033222).
* Click the [Turkish version](https://medium.com/@Teyhan/mvvm-base-protocols-9469970c202e).

[Example project](https://github.com/TeyUs/Sample_CoreData_MVVM) that using the SDK.


## Explanation
![File Structure](https://user-images.githubusercontent.com/53153396/177522919-fa2b8a82-0d72-424d-8395-73b0371326fe.png)

Due to the MVVM architecture, it is shaped on 3 different classes or structs, naturally these are also available in the SDK:
* Model
* View
* ViewModel

And in addition to these it contains 2 extra extensions in SDK:
* NSObjectExtension (a NSObject extension that returns the names of classes)
* ViewController+TapGesture (ViewController extension that closes the keyboard when tapping empty space in any ViewController)


## How to Use this SDK

For this, it is necessary to add the package to your project.
File > Add Packages… > (Paste the link in the search bar above:https://github.com/TeyUs/MVVMBaseProtocols.git) > Add Packages
