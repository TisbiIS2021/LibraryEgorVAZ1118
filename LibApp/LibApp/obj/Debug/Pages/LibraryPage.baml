   M S B A M L   `   `   `  ????A  =LibApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:LibApp.PagesLibApp.Pages  5          LibApp.Pages.LibraryPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:LibApp.Pages     5      -   5          N? Title$  LibraryPage??5	      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $	??100 ?6   ?? 5      ?? 5      $
??auto ?6   .+?5   
   ?? -   5         ??Name$ LVBook??5   #   $??1??6   $??Disabled=?63   ??5      ?? 5      .R?5      ? 5      ??5      ?? 5      .R?5      ?? $??2q?6   ??5      ?? 5       ?? 
TargetType" ??6$   .?5   "   ??  ?? Property ? ?? ?? Value
 ??p??6@   5      ._?5       ?? .+?5!      ??  ?? Orientation$ 
Horizontal=?6%   .+?5"      ?? $??Название: ??6(   ?? 5#      ??6(   ?? *
BookName+5$      ?? 5%      $ 
Horizontal=?6%   .+?5&      ?? $ ??Издательство: ??6(   ?? 5'      ??6(   ?? *Publisher.NamePublisher+5(      ?? 5)      $ 
Horizontal=?6%   .+?5*      ?? $??Число копий: ??6(   ?? 5+      ??6(   ?? *NumberOfCopies+5,      ?? 5-      $ 
Horizontal=?6%   .+?5.      ?? $#??Год публикации: ??6(   ?? 5/      ??6(   ?? *YearPublication+50      ?? 51      $ 
Horizontal=?6%   .+?52      ?? $??
Жанр: ??6(   ?? 53      ??6(   ?? *Genre.NameGenre+54      ?? 55      .+?56   "   ??  ??Name$ TakeBtn??6)   -   5        $??	Take Book??56   :   6N   57      58      59      5:      5<      ?? 5=   
   .+?5>      ?? $??Попуск??6   ?? 5?      -   5         ??Name$ SerchTB??5?      6'   ?? 5@      -   5        $ GBBtn??5@      $??Go Back??6$   	 ?? IsCancel	 . 6F   ?? 5A      -   5        $ HisBtn??5A      $??
My History??6%   6:   5B      ?? 5C   
   -   5        
 ??Name$

 SPOf??5C   %   $??2??6   $	??150??63   .+?5D      &   System.Windows.Controls.DataGrid  -   5          Name$ DGBook??5D         
IsReadOnly .    AutoGenerateColumns .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6U      Columns 5E      0  *System.Windows.Controls.DataGridTextColumn  5F      ,  &System.Windows.Controls.DataGridColumn   Header$
 Book??6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   ?? *Book.BookName+  5G      $ Return Date??6)    6>   ?? *DaterReturn+5I      (  "System.Windows.Controls.DatePicker  5J      -	   5          Name$ DP??5J      ?? 5K      -
   5        $ RentBtn??5K      $
??Rent??6&   65   5L      5M      5N      