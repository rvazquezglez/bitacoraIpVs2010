//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

namespace BitacoraIp.Models
{
    public partial class tb_bit_cat_wireless
    {
        public tb_bit_cat_wireless()
        {
            this.tb_bit_ip_historico = new HashSet<tb_bit_ip_historico>();
            this.tb_bit_ip = new HashSet<tb_bit_ip>();
        }
    
        public int pk_cve_wir { get; set; }
        public string des_wir { get; set; }
    
        public virtual ICollection<tb_bit_ip_historico> tb_bit_ip_historico { get; set; }
        public virtual ICollection<tb_bit_ip> tb_bit_ip { get; set; }
    }
    
}
