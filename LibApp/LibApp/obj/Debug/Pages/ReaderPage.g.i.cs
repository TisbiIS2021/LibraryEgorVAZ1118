﻿#pragma checksum "..\..\..\Pages\ReaderPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "27DF547DE7692D6BC8D0E5EDE98E470613F22DC0E797FCC89B2E6B111C153D6A"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using LibApp.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace LibApp.Pages {
    
    
    /// <summary>
    /// ReaderPage
    /// </summary>
    public partial class ReaderPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 17 "..\..\..\Pages\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid DGReader;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\..\Pages\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TBSearch;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\Pages\ReaderPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button GBBtn;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/LibApp;component/pages/readerpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\ReaderPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 10 "..\..\..\Pages\ReaderPage.xaml"
            ((LibApp.Pages.ReaderPage)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Page_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.DGReader = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 3:
            this.TBSearch = ((System.Windows.Controls.TextBox)(target));
            
            #line 27 "..\..\..\Pages\ReaderPage.xaml"
            this.TBSearch.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.TBSearch_TextChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.GBBtn = ((System.Windows.Controls.Button)(target));
            
            #line 28 "..\..\..\Pages\ReaderPage.xaml"
            this.GBBtn.Click += new System.Windows.RoutedEventHandler(this.GBBtn_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

