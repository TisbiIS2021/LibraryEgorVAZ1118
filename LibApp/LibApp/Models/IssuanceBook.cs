//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LibApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class IssuanceBook
    {
        public int id { get; set; }
        public System.DateTime DateIssuance { get; set; }
        public System.DateTime DaterReturn { get; set; }
        public int idUser { get; set; }
        public int idBook { get; set; }
        public int idColleague { get; set; }
    
        public virtual Book Book { get; set; }
        public virtual Colleague Colleague { get; set; }
        public virtual User User { get; set; }
    }
}