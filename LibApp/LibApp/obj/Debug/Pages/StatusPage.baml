   M S B A M L   `   `   `  ????A  =LibApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:LibApp.PagesLibApp.Pages  5          LibApp.Pages.StatusPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:LibApp.Pages     5      -   5          N? Title$  
StatusPage??5	      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $	??150 ?6   ?? 5      .+?5   
   ?? -   5         ??Name$ LVStatus??5   #   $??1??6   ??5      ?? 5      .R?5      ? 5      ??5      ?? 5      .R?5      ?? $??2q?6   ??5      ?? 5       ?? 
TargetType" ??6$   .?5   "   ??  ?? Property ? ?? ?? Value
 ??p??6@   5      ._?5      ?? .+?5       ?? ??6(   ?? *Book.BookName+?? 5!      ??6(   ?? *
User.FIO+?? 5"      ??6(   ?? *DateIssuance+ ?? StringFormat$ 
dd/MM/yyyy???? 5#      ??6(   ?? *DaterReturn+$ 
dd/MM/yyyy???? 5$      ??6(   ?? *BookStatus.StatusName+?? 5%       ??Name$ SdalBtn??6%   -   5        $??Сдал??5%   6   ??5&   "   ?? 5'   &   " ??6,    ?? Triggers 5(   *   ?? 5)   .   	 ?? Binding	 6:   ?? *
idStatus+
 ?? Value
 26W   .a?5*   2   ??  ? y?$ 	Collapsed=?6O   5+   /   5-   '   5/      50      51      52      54      ?? 55   
   .+?56      ?? -   5        $??GBBtn??56      $??Го Бак??6"   63   57      58      59      