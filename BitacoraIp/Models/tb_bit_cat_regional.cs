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
    public partial class tb_bit_cat_regional
    {
        public tb_bit_cat_regional()
        {
            this.tb_bit_usuario_historico = new HashSet<tb_bit_usuario_historico>();
            this.tb_bit_usuario = new HashSet<tb_bit_usuario>();
        }
    
        public int pk_cve_regional { get; set; }
        public string des_regional { get; set; }
        public string des_mnemonico { get; set; }
    
        public virtual ICollection<tb_bit_usuario_historico> tb_bit_usuario_historico { get; set; }
        public virtual ICollection<tb_bit_usuario> tb_bit_usuario { get; set; }
    }
    
}
